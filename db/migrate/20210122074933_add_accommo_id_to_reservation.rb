class AddAccommoIdToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :accommo_id, :integer
  end
end
