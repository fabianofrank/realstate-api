class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :city, default: 'Nomad Land'
      t.string :address, default: 'St. Worldwide, 9999'
      t.integer :bed, default: 0
      t.integer :bath, default: 0
      t.float :size, default: 9999.99
      t.integer :parking, default: 0
      t.text :description, default: 'Citizen of the world'

      t.timestamps
    end
  end
end
