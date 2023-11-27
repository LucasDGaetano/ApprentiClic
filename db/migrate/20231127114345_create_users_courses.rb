class CreateUsersCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :users_courses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :progress

      t.timestamps
    end
  end
end
