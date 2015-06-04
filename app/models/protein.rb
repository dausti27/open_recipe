class Protein < ActiveRecord::Base
	has_many :recipes , :class_name => "Recipe", :foreign_key => "protein_id"
end
