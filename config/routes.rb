WcaCompetitions::Application.routes.draw do
  resources :competitions do
    resources :news
  end

  root :to => "competitions#index"
end
