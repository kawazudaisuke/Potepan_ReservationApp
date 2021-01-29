class ChangeTypeOfDataOfReservations < ActiveRecord::Migration[6.1]
  def change
      change_column :reservations, :date_to, :date
  end
end
