class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :listing, foreign_key: true
      t.datetime :date
      t.integer :price
      t.integer :commision
      t.integer :total_price

      t.timestamps
    end
  end
end
