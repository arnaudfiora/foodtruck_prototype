class RemovePicture < ActiveRecord::Migration[5.2]
  def change
    remove_column :foodtrucks, :picture
  end
end
