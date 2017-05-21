class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string :title
      t.string :content
      t.integer :creator_id

      t.timestamps
    end
  end
end
