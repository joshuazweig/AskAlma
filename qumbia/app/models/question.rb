class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	has_many :taggings
	has_many :categories, through: :taggings
	belongs_to :user

	def all_categories=(names)
  		self.categories = names.split(",").map do |name|
     	Category.where(name: name.strip).first_or_create!
 		end
	end

	def all_categories
  		self.categories.map(&:name).join(", ")
	end

	def self.tagged_with(name)
  		Category.find_by_name!(name).questions
	end
end
