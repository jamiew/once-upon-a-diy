class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :author
      t.string :title
      t.text :plot
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
