class AddAttributesToThermostats < ActiveRecord::Migration
  def change
  	add_column :thermostats, :current_temperature, :integer
  	add_column :thermostats, :enable, :boolean
  	add_column :thermostats, :room, :string
  	add_column :thermostats, :humidity, :integer
  	add_column :thermostats, :normal_cost, :float
  	add_column :thermostats, :current_cost, :float
  end
end
