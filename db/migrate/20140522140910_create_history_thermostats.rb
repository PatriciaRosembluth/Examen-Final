class CreateHistoryThermostats < ActiveRecord::Migration
  def change
    create_table :history_thermostats do |t|
      t.integer :temperature
      t.integer :humedad
      t.integer :exterior
      t.integer :consumoN
      t.integer :consumoA
      t.integer :ahorro
      t.references :thermostat, index: true


      t.timestamps
    end
  end
end
