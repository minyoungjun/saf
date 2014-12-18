class AddSeconddateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :seconddate, :boolean, default: false
  end
end
