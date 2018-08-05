class AddColumnToDragon < ActiveRecord::Migration[5.2]
  def change
    add_column :dragons, :min_power, :integer, after: :image_url
    add_column :dragons, :max_power, :integer, after: :min_power
  end
end
