class CreateTicketOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_orders do |t|
      t.references :customer
      t.references :ticket_type

      t.timestamps
    end
  end
end
