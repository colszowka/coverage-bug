WcaCompetitions::Application.routes.draw do
  scope "/(:locale)", :locale => /de|en/ do
    resources :competitions do
      resources :news
    end

    resources :events
  end

  match ":locale" => "competitions#index"
  root :to => "competitions#index"
end
