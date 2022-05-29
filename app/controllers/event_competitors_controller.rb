require 'active_record'
require 'activerecord-import'

class EventCompetitorsController < ApplicationController
  def index
    render json: EventCompetitor.all
  end

  def scrape_results
    # EventCompetitor.create!()
    # render json: IwfRuby::Scraper.new.print_male_athletes('https://iwf.sport/results/results-by-events/?event_id=529')

    results = IwfRuby::Scraper.new.print_male_athletes('https://iwf.sport/results/results-by-events/?event_id=529')


    EventCompetitor.import results, validates: false
    

    # results.each do |result|
    #   EventCompetitor.create!(
    #     name: result.name,
    #     nation: result.nation,
    #     birthdate: result.birthdate,
    #     athlete_url: result.athlete_url,
    #     category: result.category,
    #     bweight: result.bweight,
    #     group: result.group,
    #     snatch: result.snatch,
    #     jerk: result.jerk,
    #     total: result.total,
    #     rank: result.rank
    #   )
    # end
  end
end
