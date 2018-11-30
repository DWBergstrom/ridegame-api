class CreateFinishes < ActiveRecord::Migration[5.2]
  def change
    create_table :finishes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :ride, index: true, foreign_key: true
      t.string :notes
      t.date :date
      t.integer :duration

      t.timestamps
    end
  end
end
