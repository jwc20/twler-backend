class EventsController < ApplicationController
  require "iwf_ruby"

  def index
    render json: IwfRuby::Event.new.get_years_available
  end
end
