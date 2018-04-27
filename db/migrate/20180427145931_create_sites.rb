class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name, null: false
      t.text :description
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
