class TicketOrder < ApplicationRecord
  has_many :ticket_types
  belongs_to :customer
end