Rails.application.routes.draw do

  resources :drivers do
    resources :vehicles, shallow: true
  end
  devise_for :users, skip: [:registrations]
  devise_scope :user do
    resource :users,
             only: [:edit, :update, :destroy],
             controller: 'devise/registrations',
             as: :user_registration do
      get 'cancel'

    end
    get 'user' => "welcome#index"
  end
  resources :organizations, controllers: {registrations: "organizations/registrations"}
  devise_for :drivers
  devise_for :riders, :skip => [:registrations]
  devise_scope :rider do
    resource :riders,
             only: [:edit, :update, :destroy],
             controller: 'devise/registrations',
             as: :rider_registration do
      get 'cancel'

    end
    get 'rider' => 'welcome#rider'
  end

  mount Api::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"


  get 'welcome/index'
  get 'welcome/welcome'
  get 'welcome/rider'


  resources :riders
  resources :rides
  resources :tokens, path_names: { new: 'new/:rider_id' }

  root 'welcome#welcome'

  namespace :api, :defaults => {:format => :json} do
    as :driver do
      post   "v1/sign-in"       => "v1/sessions#create"
      delete "v1/sign-out"      => "v1/sessions#destroy"
    end
  end

  namespace :user do
    root :to => "welcome#index"
  end

  namespace :rider do
    root :to => "welcome#rider"
  end

end
