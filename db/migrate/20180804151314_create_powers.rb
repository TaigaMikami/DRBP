class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.integer :point
      t.integer :dragon_id

      t.timestamps
    end
  end
end
