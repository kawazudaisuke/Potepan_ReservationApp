class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :e_mail
      t.string :password
      t.integer :user_id

      t.timestamps
    end
  end
end
