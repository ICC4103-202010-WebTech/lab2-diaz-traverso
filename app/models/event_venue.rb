class EventVenue < ApplicationRecord
  has_and_belongs_to_many :event_information
end
