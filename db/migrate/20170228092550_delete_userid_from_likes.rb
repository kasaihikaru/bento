class DeleteUseridFromLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :sentence_id, :varchar
    remove_column :likes, :user_id, :varchar
  end
end
