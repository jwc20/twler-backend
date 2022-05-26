Rails.application.routes.draw do
  resources :event_competitors
  resources :athletes
  resources :events

  get "/years", to: "events#years"
  get "/events/years/:year", to: "events#events_by_year"
  get "/events/:id/result", to: "events#results"

  # get "/test/:id", to: "events#list_events"

  get "/print_methods", to: "events#print_iwf_ruby_methods"
end
