class TicketType < ApplicationRecord
  belongs_to :ticket_order
  has_one :event_information
end
