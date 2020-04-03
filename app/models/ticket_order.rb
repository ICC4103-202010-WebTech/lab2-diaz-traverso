class TicketOrder < ApplicationRecord
  has_and_belongs_to_many :ticket_type
  belongs_to :customer
end
