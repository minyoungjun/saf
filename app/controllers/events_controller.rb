class EventsController < ApplicationController

  before_filter :is_admin, :only => [:new, :event_list, :result]

  def redirect
    redirect_to "http://saf.sbs.co.kr"

  end
  def sns
    @provider = params[:provider]
  end

  def event_list

  end

  def result
    @promotion = Promotion.find(params[:id])
    @users = @promotion.users.page(params[:page]).per(100)
  end

  def save_profile
    user = User.new
    user.name = params[:name]
    user.phone = "#{params[:phone1]}-#{params[:phone2]}-#{params[:phone3]}"
    user.email = params[:email]
    user.provider = params[:provider]
    user.promotion_id = Promotion.where(:token => params[:promotion]).first.id
    user.save
    redirect_to  "/submit/#{user.provider}"
  end


  def manage


  end

  def logout
    reset_session
    redirect_to :action => "manage"
  end
  def apply

    @promotion = Promotion.where(:token => params[:token]).first
    @provider = params[:provider]
    
  end

  def login
    if params[:username] == "kdh" && params[:password] == "rlaehdgnl1@"
      session[:admin] = "admin"
      redirect_to :action => "event_list"
    else
      wrong = Wrong.new
      wrong.ip_address = request.remote_ip
      wrong.save
      render :text => "해킹시도로 인하여 당신의 접속, 기기 정보가 저장되었습니다. 지속적으로 시도할 경우 형사고발 당하실 수 있습니다. 당신의 아이피는 #{wrong.ip_address}"
    end
  end

  def new
    promotion = Promotion.new
    promotion.title = params[:title]
    promotion.content = params[:content]
    promotion.token = SecureRandom.hex(10)
    promotion.post_url = params[:post_url]
    promotion.save
    redirect_to :action => "result", :id => promotion.id
  end

end
