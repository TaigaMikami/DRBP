class AddColumnToDragon < ActiveRecord::Migration[5.2]
  def change
    add_column :dragons, :min_power, :integer
    add_column :dragons, :max_power, :integer
  end
end
