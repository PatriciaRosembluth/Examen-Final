class AddEnableControlToUser < ActiveRecord::Migration
  def change
    add_column :users, :enable, :boolean
  end
end
