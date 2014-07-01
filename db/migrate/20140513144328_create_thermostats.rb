class CreateThermostats < ActiveRecord::Migration
  def change
    create_table :thermostats do |t|
      t.string :serial
      t.integer :temperature
      t.integer :energy
      t.references :user, index: true
      t.references :location, index: true
      t.timestamps
    end
  end
end
