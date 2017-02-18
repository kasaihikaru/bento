class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :ja
      t.text :en
      t.integer :sentence_id
      t.timestamps
    end
  end
end
