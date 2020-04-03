class TicketOrder < ApplicationRecord
  belongs_to :customer
  has_one :ticket_type
end
