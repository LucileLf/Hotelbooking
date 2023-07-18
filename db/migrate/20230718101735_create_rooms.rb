class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :price_per_night
      t.boolean :disponible, default: false
      t.string :description
      t.integer :surface
      t.integer :capacite
      t.string :image_url

      t.timestamps
    end
  end
end
