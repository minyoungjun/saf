class AddStartTimeToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :start_time, :datetime
  end
end
