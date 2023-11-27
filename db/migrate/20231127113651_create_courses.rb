class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :category
      t.string :title
      t.string :description
      t.string :difficulty
      t.time :duration

      t.timestamps
    end
  end
end
