class CreateClinicbranches < ActiveRecord::Migration
  def change
    create_table :clinicbranches do |t|
      t.string :clinic_cliniccode
      t.integer :cliniccode
      t.string :name
      t.string :displayname
      t.integer :branches
      t.boolean :discontinue
      t.date :expdate
      t.text :address1
      t.text :address2
      t.string :location
      t.string :landmarks
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin
      t.integer :fax
      t.string :website
      t.string :email
      t.string :altemail
      t.string :choosefile

      t.timestamps
    end
  end
end
