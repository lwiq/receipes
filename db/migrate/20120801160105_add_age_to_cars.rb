class AddAgeToCars < ActiveRecord::Migration
  def change
    add_column :cars, :age, :integer
  end
end
