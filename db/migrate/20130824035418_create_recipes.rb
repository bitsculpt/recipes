class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.text :ingredients
      t.string :first_name
      t.string :last_name
      t.url :blog_url
      t.integer :upvotes

      t.timestamps
    end
  end
end
