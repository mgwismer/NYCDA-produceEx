Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/help'

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  devise_for :sellers, controllers: {
    sessions: 'sellers/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
