class AddColumnToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :university_id, :string
    add_column :courses, :username, :string
    add_column :courses, :user_id, :string
  end
end
