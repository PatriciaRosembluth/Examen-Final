class RemoveMaxAndMinTemperatureFromPlanners < ActiveRecord::Migration
  def change
  	remove_column :planners, :temp_max, :integer
  	remove_column :planners, :temp_min, :integer
  end
end
