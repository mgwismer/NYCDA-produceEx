Rails.application.routes.draw do
  get 'profiles/index'

  get 'profiles/show'

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/delete'

  get 'profiles/update'

  get 'profiles/create'

  root 'static_pages#home'

  get '/about', to: "static_pages#about"

  get '/contact', to: "static_pages#contact"

  get '/help', to: "static_pages#help"

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  devise_for :sellers, controllers: { registrations: "registrations", 
      sessions: "sellers/sessions" 
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
