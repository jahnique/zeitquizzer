Zeitquizzer::Application.routes.draw do
  root :to => "home#index"
  resources :quizzers
end
