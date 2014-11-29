class CreateWrongs < ActiveRecord::Migration
  def change
    create_table :wrongs do |t|
      t.string  :ip_address
      t.timestamps
    end
  end
end
