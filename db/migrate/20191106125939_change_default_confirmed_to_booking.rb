class ChangeDefaultConfirmedToBooking < ActiveRecord::Migration[5.2]
  def change
    change_column_default :bookings, :confirmed, false
  end
end
