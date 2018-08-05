class AddDefaultPointToPower < ActiveRecord::Migration[5.2]
  def change
    change_column :powers, :point, :integer, default: 0
  end
end
