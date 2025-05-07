class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :venue
      t.references :organizer, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
