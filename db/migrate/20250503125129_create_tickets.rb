class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.string :kind
      t.decimal :price
      t.integer :available

      t.timestamps
    end
  end
end
