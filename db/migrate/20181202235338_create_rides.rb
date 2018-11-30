class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :name
      t.string :photo_url
      t.string :description
      t.integer :distance
      t.integer :points

      t.timestamps
    end
  end
end
