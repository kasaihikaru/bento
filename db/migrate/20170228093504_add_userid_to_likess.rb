class AddUseridToLikess < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :integer
    add_column :likes, :sentence_id, :integer
  end
end
