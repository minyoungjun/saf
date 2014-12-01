class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string  :title
      t.text  :content
      t.string  :token
      t.string  :post_url
      t.string  :img_url
      t.datetime  :start_time
      t.datetime  :end_time
      t.timestamps
    end
  end
end
