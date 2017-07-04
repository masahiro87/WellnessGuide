class AddDetailsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :participants, :integer
    add_column :reservations, :adults, :integer
    add_column :reservations, :children, :integer
    add_column :reservations, :infants, :integer
  end
end
