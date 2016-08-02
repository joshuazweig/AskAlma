module QuestionsHelper
	def category_links(categories)
  		categories.split(",").map{|category| link_to category.strip, category_path(category.strip) }.join(", ") 
	end
end
