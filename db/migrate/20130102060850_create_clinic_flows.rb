class CreateClinicFlows < ActiveRecord::Migration
  def change
    create_table :clinic_flows do |t|
      t.string :name
      t.string :location
      t.string :city
      t.string :speciality

      t.timestamps
    end
  end
end
