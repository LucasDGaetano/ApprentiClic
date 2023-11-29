class RemoveDoneFromChapters < ActiveRecord::Migration[7.1]
  def change
    remove_column :chapters, :done
  end
end
