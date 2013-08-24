class RecipesController < ApplicationController
	def new
		@thing = Recipe.new
	end
def create
	@thing2 = Recipe.new(params[:recipe].permit :first_name, :last_name, :recipe_name, :blog_url, :ingredients)
	@thing2.save
	redirect_to root_path
end

end
