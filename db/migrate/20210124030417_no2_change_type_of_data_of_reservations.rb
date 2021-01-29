class No2ChangeTypeOfDataOfReservations < ActiveRecord::Migration[6.1]
  def change
      change_column :reservations, :date_from, :date

  end
end
