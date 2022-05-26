class CreateContinents < ActiveRecord::Migration[6.1]
  def change
    create_table :continents do |t|
      t.string :name

      t.timestamps
    end
    add_reference :categories, :continent, foreign_key: true
  end
end
