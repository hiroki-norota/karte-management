class CreateUserprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :userprofiles do |t|
      t.string :name1, null: false
      t.string :name2, null: false
      t.integer :age
      t.string :gender
      t.string :blood_type
      t.date :birthday
      t.string :prefecture1
      t.string :prefecture2
      t.string :address1
      t.string :address2
      t.string :phonenumber1
      t.string :phonenumber2
      t.string :phonenumber3
      t.string :phonenumber4
      t.string :mail
      t.string :business
      t.string :insured_number
      t.string :insured_key
      t.date :delivery_date
      t.date :expiration_date
      t.string :burden
      t.string :insurer_number
      t.text :remarks
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
