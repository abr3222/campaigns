class AddSequentialIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :sequential_id, :integer
    add_column :comments, :user_comment_number, :integer
  end
end
