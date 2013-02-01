class CreateDoctorAssignments < ActiveRecord::Migration
  def change
    create_table :doctor_assignments do |t|
      t.references :clinic
      t.references :clinicbranch
      t.references :consultant_master
      t.string :doctor_name
      t.integer :doctor_id
      t.float :doctor_charge
      t.float :clinic_charge

      t.timestamps
    end
    add_index :doctor_assignments, :clinic_id
    add_index :doctor_assignments, :clinicbranch_id
    add_index :doctor_assignments, :consultant_master_id
  end
end
