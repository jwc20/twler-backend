class Athlete < ApplicationRecord
  has_many :event_competitors
  has_many :events, through: :event_competitors
end
