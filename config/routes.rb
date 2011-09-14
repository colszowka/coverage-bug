WcaCompetitions::Application.routes.draw do
  resources :competitions do
    resources :news
  end

  resources :events

  root :to => "competitions#index"
end
