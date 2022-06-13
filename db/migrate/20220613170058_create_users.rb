class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :email
      t.string :city
      t.integer :plz
      t.string :password
      t.string :street
      t.string :country
      t.date :date_of_birth

      t.timestamps
    end
  end
end
