class CreateTicketOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_order do |t|
      t.integer :ID
      t.references :ticket_type
      t.references :customer
      t.timestamps
    end
  end
end
