class CreateAricles < ActiveRecord::Migration
  def change
    create_table :aricles do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
