class RemoveProgramFromListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :program, :string
  end
end
