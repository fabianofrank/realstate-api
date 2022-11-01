class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :city
      t.string :district
      t.string :street
      t.integer :bed
      t.integer :bath
      t.float :size
      t.integer :parking
      t.text :description

      t.timestamps
    end
  end
end
