class CreateTicketOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_orders do |t|
      t.references :ticket_type, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
