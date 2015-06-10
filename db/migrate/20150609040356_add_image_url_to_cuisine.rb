class AddImageUrlToCuisine < ActiveRecord::Migration
  def change
    add_column :cuisines, :image_url, :string
  end
end
