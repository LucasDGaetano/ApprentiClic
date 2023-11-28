class AddDefaultToProgressInUsersCourses < ActiveRecord::Migration[7.1]
  def change
    change_column :users_courses, :progress, :integer, default: 0
  end
end
