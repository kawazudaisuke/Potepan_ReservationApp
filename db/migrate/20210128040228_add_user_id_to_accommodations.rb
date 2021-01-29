class AddUserIdToAccommodations < ActiveRecord::Migration[6.1]
  def change
    add_column :accommodations, :user_id, :integer
   
  end
end
