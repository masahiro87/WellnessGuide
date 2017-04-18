class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :category
      t.string :program
      t.string :title
      t.text :summary
      t.string :language
      t.integer :price
      t.text :time_schedule
      t.string :meeting_place
      t.integer :capacity
      t.text :price_include
      t.text :to_bring
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
