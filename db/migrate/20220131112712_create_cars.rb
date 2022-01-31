class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :marque
      t.integer :annee
      t.integer :tarif

      t.timestamps
    end
  end
end
