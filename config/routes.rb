AngelListApi::Application.routes.draw do
  resources :startups, :only => :new do
    collection do
      get 'fill_from_angellist', to: 'startups#fill_from_angel_list'
    end
  end
  root :to => 'startups#new'
end
