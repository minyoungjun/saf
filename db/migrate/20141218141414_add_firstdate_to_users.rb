class AddFirstdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstdate, :boolean, default: false
  end
end
