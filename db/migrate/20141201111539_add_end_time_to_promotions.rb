class AddEndTimeToPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :end_time, :datetime
  end
end
