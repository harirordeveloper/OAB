class CreateClinicbranchTimings < ActiveRecord::Migration
  def change
    create_table :clinicbranch_timings do |t|
      t.references :clinicbranch

      t.timestamps
    end
    add_index :clinicbranch_timings, :clinicbranch_id
  end
end
