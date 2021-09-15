class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :dob
      t.integer :gender
      t.float :age
      t.string :type

      t.timestamps
    end
  end
end
