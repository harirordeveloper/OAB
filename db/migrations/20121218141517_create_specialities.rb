class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :clinicname
      t.string :branchname
      t.boolean :cardiology
      t.boolean :cardiothoracicsurgery
      t.boolean :neurology
      t.boolean :Neurosurgery
      t.boolean :Oncology
      t.boolean :Hematology
      t.boolean :Orthopaedics
      t.boolean :JointReplacement
      t.boolean :Gastroenterology

      t.timestamps
    end
  end
end
