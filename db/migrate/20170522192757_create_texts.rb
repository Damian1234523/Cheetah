class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string :title
      t.text :content
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
