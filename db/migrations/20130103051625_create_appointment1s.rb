class CreateAppointment1s < ActiveRecord::Migration
  def change
    create_table :appointment1s do |t|
      t.string :date
      t.string :hour

      t.timestamps
    end
  end
end
