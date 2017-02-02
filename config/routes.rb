Rails.application.routes.draw do
  resources :agendas
  root to: 'agendas#index'
  get 'search' => 'agendas#search'
end
