class TicketType < ApplicationRecord
  has_one :ticket_information
end
