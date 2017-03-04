class AddLikescountToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :likes_count, :integer
  end
end
