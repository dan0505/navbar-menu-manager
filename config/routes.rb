Rails.application.routes.draw do
  get "menu/manage"
  post "menu/update_all"
  get "landing/index"

  root "landing#index"
end
