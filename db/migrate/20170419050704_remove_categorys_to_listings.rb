class RemoveCategorysToListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :program_level, :string
    remove_column :listings, :place_type, :string
  end
end
