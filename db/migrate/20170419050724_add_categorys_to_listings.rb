class AddCategorysToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :program_level, :string, after: :program
    add_column :listings, :location, :string, after: :program_level
  end
end
