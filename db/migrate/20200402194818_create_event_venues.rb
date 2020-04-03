class CreateEventVenue < ActiveRecord::Migration[6.0]
  def change
    create_table :event_venue do |t|
      t.integer :ID
      t.string :Name
      t.string :Address
      t.integer :Capacity

      t.timestamps
    end
  end
end
