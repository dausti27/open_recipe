class Chef < ActiveRecord::Base
	has_many :recipes , :class_name => "Recipe", :foreign_key => "chef_id"
end
