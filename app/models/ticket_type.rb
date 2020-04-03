class TicketType < ApplicationRecord
  belongs_to :event_information
  has_many :ticket_orders
end
