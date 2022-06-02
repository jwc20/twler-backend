Rails.application.routes.draw do
  # resources :scrapers
  # resources :event_competitors
  # resources :athletes
  # resources :events
  resource :users, only: [:create]
  post '/login', to: 'auth#login'
  get '/login', to: 'auth#token_authenticate'

  get '/auto_login', to: 'auth#auto_login'
  get '/user_is_authed', to: 'auth#user_is_authed'

  get '/years', to: 'scrapers#years'
  get '/events/years/:year', to: 'scrapers#events_by_year'

  # get stats of event?
  # get '/events/:name_of_event', to: 'scrapers#results'
  get '/events/years/:year/:name_of_event/men_results', to: 'scrapers#men_results'
  get '/events/years/:year/:name_of_event/women_results', to: 'scrapers#women_results'

  # get '/events/results/:name_of_event/men_results', to: 'scrapers#men_results'
  # get '/events/results/:name_of_event/women_results', to: 'scrapers#men_results'

  # get '/print_methods', to: 'scrapers#print_iwf_ruby_methods'
end
