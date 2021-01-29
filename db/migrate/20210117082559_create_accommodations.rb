class CreateAccommodations < ActiveRecord::Migration[6.1]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.integer :fee
      t.string :image_name
      t.integer :accomo_id

      t.timestamps
    end
  end
end
