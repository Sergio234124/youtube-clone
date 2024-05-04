class AddUserIdToTutorials < ActiveRecord::Migration[7.1]
  def change
    add_column :tutorials, :user_id, :integer
    add_index :tutorials, :user_id
  end
end
