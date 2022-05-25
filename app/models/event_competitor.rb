class EventCompetitor < ApplicationRecord
  belongs_to :athlete
  belongs_to :event
end
