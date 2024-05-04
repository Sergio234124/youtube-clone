class CreateTutorials < ActiveRecord::Migration[7.1]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
