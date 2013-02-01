class CreateClinicTimings < ActiveRecord::Migration
  def change
    create_table :clinic_timings do |t|
      t.string :day
      t.time :morning_time
      t.time :evening_time
      t.time :others
      t.references :clinic

      t.timestamps
    end
    add_index :clinic_timings, :clinic_id
  end
end
