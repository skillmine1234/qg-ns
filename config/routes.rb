Rails.application.routes.draw do
  resources :ns_callbacks do
    collection do
      get :index
      get :index
    end
    member do
      get 'audit_logs'
      get 'approve'
    end
  end

  resources :ns_templates do
    member do
      get 'audit_logs'
      get 'approve'
    end
  end
end
