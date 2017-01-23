Rails.application.routes.draw do

  get 'buyer_profiles/index'

  get 'buyer_profiles/show'

  get 'buyer_profiles/new'

  get 'buyer_profiles/create'

  get 'buyer_profiles/edit'

  get 'buyer_profiles/update'

  get 'buyer_profiles/destroy'

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

 resources :products, :markets, :reviews

 devise_for :sellers, controllers: { registrations: "sellers/registrations", 
      sessions: "sellers/sessions" 
    }
 devise_for :buyers, controllers: { registrations: "buyers/registrations", 
      sessions: "buyers/sessions" 
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
