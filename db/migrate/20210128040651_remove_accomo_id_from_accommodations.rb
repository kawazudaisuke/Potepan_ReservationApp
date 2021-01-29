class RemoveAccomoIdFromAccommodations < ActiveRecord::Migration[6.1]
  def change
    remove_column :accommodations, :accomo_id, :integer
  end
end
