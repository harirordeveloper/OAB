class CreateDoctorFlows < ActiveRecord::Migration
  def change
    create_table :doctor_flows do |t|
      t.string :name
      t.string :location
      t.string :city
      t.string :speciality

      t.timestamps
    end
  end
end
