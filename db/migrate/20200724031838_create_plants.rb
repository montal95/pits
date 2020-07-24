class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.integer :watering_gap
      t.integer :optimal_humidity

      t.timestamps
    end
  end
end
