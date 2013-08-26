class RecipesController < ApplicationController
	def new
		@recipes = Recipe.new
	end
def create
	@recipes = Recipe.new(post_params)
	@recipes.save
	redirect_to @recipes
end
def show
	@recipes = Recipe.find(params[:id])
end

def index
	@recipes = Recipe.all
end



private
def post_params
	params.require(:recipe).permit(:first_name, :last_name, :recipe_name, :blog_url, :ingredients)
end
end

