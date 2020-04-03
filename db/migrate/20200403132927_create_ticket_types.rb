class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.string :type_ticket
      t.numeric :price
      t.references :event_information
      t.references :ticket_order

      t.timestamps
    end
  end
end
