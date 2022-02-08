class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.date :starts_on
      t.date :ends_on
      t.references :origin, foreign_key: { to_table: :locations }
      t.references :destination, foreign_key: { to_table: :locations }

      t.timestamps
    end
  end
end
