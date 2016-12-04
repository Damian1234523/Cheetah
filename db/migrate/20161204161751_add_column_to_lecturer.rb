class AddColumnToLecturer < ActiveRecord::Migration[5.0]
  def change
    add_column :lecturers, :course_id, :string
    add_column :lecturers, :username, :string
    add_column :lecturers, :user_id, :string
  end
end
