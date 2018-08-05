class AddColumnToPowers < ActiveRecord::Migration[5.2]
  def change
    add_column :powers, :diary_id, :integer, after: :dragon_id
  end
end
