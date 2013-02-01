class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|

      t.timestamps
    end
  end
end
