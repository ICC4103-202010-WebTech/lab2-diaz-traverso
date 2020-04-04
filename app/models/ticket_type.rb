class TicketType < ApplicationRecord
  has_many :order_types
  belongs_to :event_information
  has_many :ticket_orders, through: :order_types
end
