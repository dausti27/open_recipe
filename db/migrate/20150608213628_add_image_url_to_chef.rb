class AddImageUrlToChef < ActiveRecord::Migration
  def change
    add_column :chefs, :image_url, :string
  end
end
