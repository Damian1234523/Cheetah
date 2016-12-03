class AddDetalToUniversity < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :username, :string
    add_column :universities, :user_id, :string
  end
end
