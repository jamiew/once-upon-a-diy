class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.integer :story_id
      t.string :name
      t.string :gender
      t.string :hobbies
      t.string :clothes
      t.string :traits
      t.string :fun_facts
      t.string :eye_color
      t.string :hair
      t.string :location
      t.string :special_abilities

      t.timestamps
    end

    add_index :characters, :story_id
  end
end
