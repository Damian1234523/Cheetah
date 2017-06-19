class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :userid
      t.text :content
      t.string :tuep
      t.integer :resourceid

      t.timestamps
    end
  end
end
