class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string  :title
      t.text  :content
      t.string  :token
      t.string  :post_url
      t.string  :img_url
      t.timestamps
    end
  end
end
