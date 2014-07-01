class AddColumnDefaultToPlanners < ActiveRecord::Migration
  def change
  	add_column :planners, :default, :integer
  end
end
