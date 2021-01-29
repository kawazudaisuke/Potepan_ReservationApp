class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :date_from
      t.integer :date_to
      t.integer :guests

      t.timestamps
    end
  end
end
