class CreateOrganizers < ActiveRecord::Migration[8.0]
  def change
    create_table :organizers do |t|
      t.timestamps
    end
  end
end
