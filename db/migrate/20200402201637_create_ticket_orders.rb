class CreateTicketOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_orders do |t|
      t.integer :ID
      t.integer :ticket
      t.references :ticket
      t.timestamps
    end
  end
end
