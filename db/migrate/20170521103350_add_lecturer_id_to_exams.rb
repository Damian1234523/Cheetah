class AddLecturerIdToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :lecturer_id, :integer
  end
end
