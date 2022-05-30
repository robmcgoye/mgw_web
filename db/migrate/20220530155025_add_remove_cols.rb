class AddRemoveCols < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :published, :boolean
    remove_column :links, :published, :boolean
  end
end
