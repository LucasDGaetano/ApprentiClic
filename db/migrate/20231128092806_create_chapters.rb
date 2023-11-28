class CreateChapters < ActiveRecord::Migration[7.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :content
      t.boolean :done, default: false
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
