class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.integer :temp_max
      t.integer :temp_min
      t.integer :trigger_time
      t.references :location, index: true

      t.timestamps
    end
  end
end
