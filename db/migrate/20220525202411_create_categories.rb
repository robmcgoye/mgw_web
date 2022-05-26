class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :sort
      t.references :folder, foreign_key: { to_table: :categories }

      t.timestamps
    end

    create_table :links do |t|
      t.string :title
      t.string :url
      t.integer :sort
      t.boolean :published
      t.references :category, null: false, foreign_key: true
      t.timestamps    
    end
  end
end
