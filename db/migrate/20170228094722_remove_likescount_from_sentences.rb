class RemoveLikescountFromSentences < ActiveRecord::Migration
  def change
    remove_column :sentences, :likes_count, :varchar
  end
end
