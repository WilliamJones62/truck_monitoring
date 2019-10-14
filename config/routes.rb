Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :truck_repairs
  get 'truck_logistics/showimage/:id'  => 'truck_logistics#showimage'
  get 'truck_finances/showimage/:id'  => 'truck_finances#showimage'
  get 'truck_accidents/showimage/:id'  => 'truck_accidents#showimage'
  get 'truck_repairs/showimage/:id'  => 'truck_repairs#showimage'
  get 'trucks/showimage/:id'  => 'trucks#showimage'
  get 'trucks/decomm'  => 'trucks#decomm'
  get 'trucks/upload'  => 'trucks#upload'
  get 'home/show' => 'home#show'
  resources :trucks do
    collection { post :import }
    resources :truck_attachments, except: [:index, :show]
    resources :truck_logistics do
      resources :logistic_attachments, except: [:index, :show]
    end
    resources :truck_finances do
      resources :finance_documents, except: [:index, :show]
      resources :finance_attachments, except: [:index, :show]
    end
    resources :truck_accidents do
      resources :accident_contacts, except: [:index, :show]
      resources :accident_attachments, except: [:index, :show]
    end
    resources :truck_maintenances do
      resources :maintenance_contacts, except: [:index, :show]
      resources :maintenance_schedules, except: [:index, :show]
    end
    resources :truck_repairs do
      resources :repair_contacts, except: [:index, :show]
      resources :repair_attachments, except: [:index, :show]
    end
    resources :truck_its
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#show'
end
