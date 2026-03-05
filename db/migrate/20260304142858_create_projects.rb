class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.timestamps
      t.string :name, null: false
      t.references :ensemble, null: false, foreign_key: true
      t.date :date, null: false
      t.string :place
    end
  end
end
