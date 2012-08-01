class CreateCars < ActiveRecord::Migration

  drop_table :cars
  def change
    create_table :cars do |t|
      t.integer :reader_id
      t.string :made
      t.timestamps
    end
  end
end
