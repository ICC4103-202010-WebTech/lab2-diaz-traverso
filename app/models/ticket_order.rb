class TicketOrder < ApplicationRecord
  has_many :order_types
  belongs_to :customer
  has_many :ticket_types, through: :order_types
end
