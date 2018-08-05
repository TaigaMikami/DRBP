class AddColumnToDiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :user_id, :integer, after: :content
  end
end
