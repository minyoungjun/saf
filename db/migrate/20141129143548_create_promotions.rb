class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string  :title
      t.text  :content
      t.string  :token
      t.timestamps
    end
  end
end
