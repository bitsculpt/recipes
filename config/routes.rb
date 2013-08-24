Recipes::Application.routes.draw do
  root :to => 'recipes#new'
resources :recipes 

end
