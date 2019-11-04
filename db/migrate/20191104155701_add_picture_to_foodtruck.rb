class AddPictureToFoodtruck < ActiveRecord::Migration[5.2]
  def change
    add_column :foodtrucks, :picture, :string
  end
end
