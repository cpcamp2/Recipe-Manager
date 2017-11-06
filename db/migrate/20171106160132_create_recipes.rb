class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :difficulty
      t.integer :prep_time
      t.string :directions, null: false
      t.string :ingredients, null: false
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end
