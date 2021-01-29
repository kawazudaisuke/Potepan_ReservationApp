class AddDescriptionColumnToAccommodation < ActiveRecord::Migration[6.1]
  def change
    add_column :accommodations, :description, :string
  end
end
