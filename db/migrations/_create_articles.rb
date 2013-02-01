class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.date :createdat
      t.integer :users_id

      t.timestamps
    end
  end
end
