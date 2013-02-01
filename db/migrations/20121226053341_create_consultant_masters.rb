class CreateConsultantMasters < ActiveRecord::Migration
  def change
    create_table :consultant_masters do |t|
      t.string :name
      t.string :degree
      t.string :specialities
      t.integer :total_exp
      t.boolean :conformation
      t.float :charge
      t.text :qualifications
      t.text :expertise
      t.text :professional_exp
      t.text :awards_achievments
      t.references :consultant

      t.timestamps
    end
    add_index :consultant_masters, :consultant_id
  end
end
