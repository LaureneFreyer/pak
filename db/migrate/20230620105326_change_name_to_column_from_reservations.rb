class ChangeNameToColumnFromReservations < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :date, :start_date
  end
end
