class EventsController < ApplicationController
  require 'iwf_ruby'

  def years
    render json: IwfRuby::Scraper.new.get_years_available
  end

  # def print_iwf_ruby_methods
  #   render json: Event.instance_methods - Object.instance_methods
  # end

  #   def list_events
  #     render json: IwfRuby::Event.new.print_events(params[:id])
  #   end

  def events_by_year
    # IwfRuby::Event.reset_all
    render json: IwfRuby::Scraper.new.print_events(params[:year])
  end

  private

  def find_events; end
end
