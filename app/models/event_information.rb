class EventInformation < ApplicationRecord
  has_and_belongs_to_many :ticket_type
  has_one :event_venue
end
