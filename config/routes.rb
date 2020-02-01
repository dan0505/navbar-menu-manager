Rails.application.routes.draw do
  get "menu/manage"
  get "landing/index"

  root "landing#index"
end
