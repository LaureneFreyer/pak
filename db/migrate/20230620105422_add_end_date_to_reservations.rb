class AddEndDateToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :end_date, :date
  end
end
