class TicketOrder < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :customer
end
