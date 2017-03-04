class AddLikeCountToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :likes_count, :string
  end
end
