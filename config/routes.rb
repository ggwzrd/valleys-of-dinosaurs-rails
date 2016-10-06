Rails.application.routes.draw do
  resources :valleys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dinosaurs
  
  # get "dinosaurs" => "dinosaurs#index"
  # get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur
  # get "dinosaurs/:id/edit" => "dinosaurs#edit", as: :edit_dinosaur
  # post "dinosaurs" => "dinosaurs#create"
  # get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur
  # patch "dinosaurs/:id" => "dinosaurs#update"
  # delete "dinosaurs/:id" => "dinosaurs#destroy"

  root "valleys#index"
end
