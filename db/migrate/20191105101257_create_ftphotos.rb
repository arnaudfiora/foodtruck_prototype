class CreateFtphotos < ActiveRecord::Migration[5.2]
  def change
    create_table :ftphotos do |t|
      t.string :photo
      t.references :foodtruck, foreign_key: true

      t.timestamps
    end
  end
end
