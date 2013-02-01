class CreateSpecalitiesMasters < ActiveRecord::Migration
  def change
    create_table :specalities_masters do |t|
      t.string :name

      t.timestamps
    end
  end
end
