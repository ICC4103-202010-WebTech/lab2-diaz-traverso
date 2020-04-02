class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.integer :ID
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
