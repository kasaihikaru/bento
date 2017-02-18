class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.text :ja
      t.text :en
      t.integer :user_id
      t.boolean :secret
      t.integer :original_sentence_id
      t.timestamps
    end
  end
end
