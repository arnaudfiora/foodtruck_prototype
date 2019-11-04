class CreateFoodtrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :foodtrucks do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :capacity

      t.timestamps
    end
  end
end
