locale_prefix =
  if Rails.env.test?
    ""
  else
    "/(:locale)"
  end

WcaCompetitions::Application.routes.draw do
  scope locale_prefix, :locale => /de|en/ do
    resources :competitions do
      resources :news
    end

    resources :events
  end

  match ":locale" => "competitions#index"
  root :to => "competitions#index"
end
