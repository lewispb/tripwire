class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.string :country
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
