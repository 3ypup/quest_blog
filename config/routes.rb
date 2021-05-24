Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get  "/" =>  "quests#index"

 resources :clist
 resources :quests do
 	resources :units
 end
end
