class AddAccommoImageToAccommodations < ActiveRecord::Migration[6.1]
  def change
    add_column :accommodations, :accommo_image, :string
  end
end
