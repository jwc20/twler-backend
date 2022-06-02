class ScrapersController < ApplicationController
  skip_before_action :require_login, only: %i[years events_by_year men_results women_results]
  # skip_before_action :authorized, only: [:create]
  require 'iwf_ruby'
  # before_action :require_login

  def years
    render json: IwfRuby::Scraper.new.get_years_available
  end

  def events_by_year
    # IwfRuby::Scraper.clear
    render json: IwfRuby::Scraper.new.print_events(params[:year])
  end

  def men_results
    athletes = IwfRuby::Scraper.new.find_event_result_men(params[:name_of_event], params[:year])
    array = []
    athletes.each do |athlete|
      array.push(athlete) unless athlete.name.nil?
    end
    # puts array
    render json: array
  end

  def women_results
    athletes = IwfRuby::Scraper.new.find_event_result_women(params[:name_of_event], params[:year])
    array = []
    athletes.each do |athlete|
      array.push(athlete) unless athlete.name.nil?
    end
    render json: array
  end

  # def testttt
  #   event_url = 'https://iwf.sport/results/results-by-events/?event_id=527'
  #   render json: IwfRuby::Scraper.new.get_participant_countries(event_url)
  # end

  private

  def find_events; end
end
