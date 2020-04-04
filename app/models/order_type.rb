class OrderType < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :ticket_order
end
