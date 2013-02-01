class CreateBookappointments < ActiveRecord::Migration
  def change
    create_table :bookappointments do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.text :address
      t.integer :phonenum
      t.string :email

      t.timestamps
    end
  end
end
