class CreateUsersChapters < ActiveRecord::Migration[7.1]
  def change
    create_table :users_chapters do |t|
      t.boolean :done, default: false
      t.references :users_course, null: false, foreign_key: true
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
