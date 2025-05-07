class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :customer,  foreign_key: { to_table: :users }
      t.references :ticket, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
