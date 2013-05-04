Codealong::Application.routes.draw do
  root :to => "static_pages#index" #"name_of_controller#action"

  get 'bananas' => "static_pages#bananas" #localhost:3000/bananas
end
