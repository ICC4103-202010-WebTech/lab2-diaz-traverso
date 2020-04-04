class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.string :description
      t.numeric :price
      t.references :event_information

      t.timestamps
    end
  end
end
