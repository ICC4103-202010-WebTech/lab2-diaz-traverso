class CreateOrderTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_types do |t|
      t.references :ticket_type
      t.references :ticket_order

      t.timestamps
    end
  end
end
