class Event < ApplicationRecord
  has_many :event_competitors
  has_many :athletes, through: :event_competitors
end
