class Recipe < ActiveRecord::Base
	belongs_to :chef , :class_name => "Chef", :foreign_key => "chef_id"
	belongs_to :protein , :class_name => "Protein", :foreign_key => "protein_id"
	belongs_to :cuisine , :class_name => "Cuisine", :foreign_key => "cuisine_id"
end
