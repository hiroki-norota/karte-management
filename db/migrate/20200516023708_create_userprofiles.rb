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
      t.integer :phonenumber1
      t.integer :phonenumber2
      t.integer :phonenumber3
      t.integer :phonenumber4
      t.string :mail
      t.string :business
      t.integer :insured_id
      t.text :remarks
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
