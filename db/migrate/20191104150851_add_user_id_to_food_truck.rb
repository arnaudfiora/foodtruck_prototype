class AddUserIdToFoodTruck < ActiveRecord::Migration[5.2]
  def change
    add_reference :foodtrucks, :user, index: true
  end
end
