class AddNameToReservation < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :name, :string
  end
end
