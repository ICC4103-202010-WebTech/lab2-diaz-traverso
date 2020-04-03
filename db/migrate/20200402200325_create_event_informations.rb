class CreateEventInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :event_information do |t|
      t.integer :ID
      t.string :Name
      t.string :Description
      t.date :Start_date
      t.reference :event_venue

      t.timestamps
    end
  end
end
