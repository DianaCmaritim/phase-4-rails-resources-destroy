Rails.application.routes.draw do
  #resources :birds, only: [:index, :show, :create, :update, :destroy]
  #we can omit only since we are using all five RESTful routes
  resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end
