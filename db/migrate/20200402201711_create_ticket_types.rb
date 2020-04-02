class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.integer :ID
      t.integer :event
      t.numeric :price

      t.timestamps
    end
  end
end
