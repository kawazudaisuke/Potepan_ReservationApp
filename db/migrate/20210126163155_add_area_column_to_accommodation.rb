class AddAreaColumnToAccommodation < ActiveRecord::Migration[6.1]
  def change
    add_column :accommodations, :area, :string
  end
end
