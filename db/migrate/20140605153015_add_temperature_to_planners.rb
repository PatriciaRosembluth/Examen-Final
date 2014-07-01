class AddTemperatureToPlanners < ActiveRecord::Migration
  def change
    add_column :planners, :temperature, :integer
  end
end
