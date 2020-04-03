class Customer < ApplicationRecord
  has_many :ticket_order
  has_many :ticket_types, through: :ticket_order
end
