class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :occupation

      t.timestamps
    end
  end
end
