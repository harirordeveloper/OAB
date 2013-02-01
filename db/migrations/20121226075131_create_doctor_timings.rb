class CreateDoctorTimings < ActiveRecord::Migration
  def change
    create_table :doctor_timings do |t|
      t.string :day
      t.time :morning_time
      t.time :evening_time
      t.time :others
      t.references :consultant_master

      t.timestamps
    end
    add_index :doctor_timings, :consultant_master_id
  end
end
