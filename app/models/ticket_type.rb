class TicketType < ApplicationRecord
  belongs_to :event_information
  belongs_to :ticket_order
end
