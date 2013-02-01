class CreateClinicProfileMasters < ActiveRecord::Migration
  def change
    create_table :clinic_profile_masters do |t|
      t.references :clinic
      t.references :clinicbranches
      t.text :about
      t.text :services
      t.text :packages
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :photo5

      t.timestamps
    end
    add_index :clinic_profile_masters, :clinic_id
    add_index :clinic_profile_masters, :clinicbranches_id
  end
end
