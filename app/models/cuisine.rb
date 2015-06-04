class Cuisine < ActiveRecord::Base
	has_many :recipes , :class_name => "Recipe", :foreign_key => "cuisine_id"
end
