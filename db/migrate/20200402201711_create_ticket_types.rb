class CreateTicketType < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_type do |t|
      t.integer :ID
      t.numeric :price
      t.references :event_information
      t.timestamps
    end
  end
end
