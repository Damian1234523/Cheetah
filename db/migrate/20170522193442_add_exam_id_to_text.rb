class AddExamIdToText < ActiveRecord::Migration[5.0]
  def change
    add_column :texts, :exam_id, :integer
  end
end
