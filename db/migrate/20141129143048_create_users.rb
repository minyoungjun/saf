class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :promotion_id
      t.string  :name
      t.string  :phone
      t.string  :email
      t.string  :provider
      t.string  :ip_address
      t.string  :post_number
      t.string  :address

      t.timestamps
    end
  end
end
