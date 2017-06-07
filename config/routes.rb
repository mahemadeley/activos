Rails.application.routes.draw do
  resources :activos
  resources :evaluos
  resources :tipos
  resources :detalle_sectors
  resources :sectors
  resources :encargados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
