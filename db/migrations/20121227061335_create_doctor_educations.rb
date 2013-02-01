class CreateDoctorEducations < ActiveRecord::Migration
  def change
    create_table :doctor_educations do |t|
      t.string :degree
      t.string :college
      t.string :address
      t.string :year_of_pass
      t.references :consultant_master

      t.timestamps
    end
    add_index :doctor_educations, :consultant_master_id
  end
end
