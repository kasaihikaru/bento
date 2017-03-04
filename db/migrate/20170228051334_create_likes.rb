class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_id
      t.string :sentence_id
      t.timestamps
    end
  end
end
