Rails.application.routes.draw do
  resources :event_competitors
  resources :athletes
  resources :events

  get "/years", to: "events#years"
  get "/print_methods", to: "events#print_iwf_ruby_methods"
  # get "/test/:id", to: "events#list_events"
end
