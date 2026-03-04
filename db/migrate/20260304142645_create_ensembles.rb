class CreateEnsembles < ActiveRecord::Migration[7.2]
  def change
    create_table :ensembles do |t|
      t.timestamps
      t.string :name, null: false
      t.string :website
      t.string :email
    end
  end
end
