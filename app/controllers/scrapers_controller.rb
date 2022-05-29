class ScrapersController < ApplicationController
  require 'iwf_ruby'
  

  def years
    render json: IwfRuby::Scraper.new.get_years_available
  end

  def events_by_year
    # IwfRuby::Event.reset_all
    render json: IwfRuby::Scraper.new.print_events(params[:year])
  end

  def results
    athletes = IwfRuby::Scraper.new.find_event(params[:name_of_event], params[:year])
    array = Array.new
    athletes.each do |athlete| 
      if athlete.name != nil
        array.push(athlete)
      end
    end
    render json: array
  end

  def print_iwf_ruby_methods
    render json: Event.instance_methods - Object.instance_methods
  end

  private

  
  def find_events; end
end
