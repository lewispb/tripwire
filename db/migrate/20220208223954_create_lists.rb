class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
