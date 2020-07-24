class CreateGreenhouses < ActiveRecord::Migration[6.0]
  def change
    create_table :greenhouses do |t|
      t.belongs_to :user
      t.belongs_to :plant

      t.timestamps
    end
  end
end
