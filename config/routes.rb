Rails.application.routes.draw do
  resources :scrapers
  resources :event_competitors
  resources :athletes
  resources :events

  get '/years', to: 'scrapers#years'
  get '/events/years/:year', to: 'scrapers#events_by_year'

  # get stats of event?
  # get '/events/:name_of_event', to: 'scrapers#results'
  get '/events/years/:year/:name_of_event/result', to: 'scrapers#results'

  get '/print_methods', to: 'scrapers#print_iwf_ruby_methods'
end
