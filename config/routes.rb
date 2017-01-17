Rails.application.routes.draw do
  resources :products, :markets

  get 'profiles/index'

  get 'profiles/show'

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/delete'

  get 'profiles/update'

  get 'profiles/create'

  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/help'

  devise_for :sellers, controllers: { registrations: "registrations", 
      sessions: "sellers/sessions" 
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
