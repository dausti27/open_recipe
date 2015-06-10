class AddImageUrlToProtein < ActiveRecord::Migration
  def change
    add_column :proteins, :image_url, :string
  end
end
