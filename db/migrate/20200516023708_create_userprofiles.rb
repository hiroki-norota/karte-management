class CreateUserprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :userprofiles do |t|
      t.string :name1, null: false
      t.string :name2, null: false
      t.integer :age
      t.integer :gender, null: false
      t.string :blood_type
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.string :prefecture1
      t.string :prefecture2
      t.string :address1
      t.string :address2
      t.integer :phonenumber1
      t.integer :phonenumber2
      t.integer :phonenumber3
      t.integer :phonenumber4
      t.string :mail
      t.string :business
      t.integer :insured_number
      t.integer :insured_id
      t.integer :delivery_year
      t.integer :delivery_month
      t.integer :delivery_day
      t.integer :expiration_year
      t.integer :expiration_month
      t.integer :expiration_day
      t.integer :burden
      t.integer :insurer_number
      t.text :remarks
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
