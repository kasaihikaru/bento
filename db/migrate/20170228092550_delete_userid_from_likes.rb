class DeleteUseridFromLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :sentence_id, :varchar
  end
end
