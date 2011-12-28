RighteousUjs::Application.routes.draw do

  resources :toys

  resources :toys, :except => :show do
    get    :delete, :on => :member
    delete :delete, :on => :member, :action => :destroy
  end

  root :to => "toys#index"

end
