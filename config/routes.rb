WcaCompetitions::Application.routes.draw do
  resources :competitions
  root :to => "competitions#index"
end
