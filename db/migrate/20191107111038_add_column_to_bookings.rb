class AddColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_status, :string
    change_column_default :bookings, :booking_status, 'pending'
  end
end
