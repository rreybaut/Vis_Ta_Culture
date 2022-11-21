class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :country
      t.string :city
      t.float :price
      t.boolean :lodging
      t.boolean :meal
      t.boolean :pet
      t.boolean :smoker
      t.boolean :excursion
      t.boolean :child
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
