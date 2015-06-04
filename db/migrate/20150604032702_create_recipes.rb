class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :recipe_name
      t.integer :protein_id
      t.integer :chef_id
      t.integer :cuisine_id
      t.text :ingredient_list
      t.text :directions
      t.string :image_url

      t.timestamps

    end
  end
end
