class AddTimesToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :program_time, :string, after: :category
  end
end
