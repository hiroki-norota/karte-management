class CreateUserprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :userprofiles do |t|
      t.integer :record_id
      t.string :name1
      t.string :name2
      t.integer :age
      t.integer :gender
      t.integer :birthday
      t.string :address1
      t.string :address2
      t.integer :phonenumber1
      t.integer :phonenumber2
      t.integer :phonenumber3
      t.integer :phonenumber4
      t.string :mail
      t.string :business
      t.text :remarks
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
