class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :week_day
      t.integer :temp_max
      t.integer :temp_min
      t.string :schedule
      t.references :thermostat, index: true

      t.timestamps
    end
  end
end
