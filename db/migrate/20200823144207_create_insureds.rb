class CreateInsureds < ActiveRecord::Migration[6.0]
  def change
    create_table :insureds do |t|
      t.integer :insured_number
      t.integer :insured_key
      t.integer :delivery_date
      t.integer :expiration_date
      t.string :burden
      t.integer :insurer_number
      t.references :userprofile, null: false, foreign_key: true
      t.timestamps
    end
  end
end
