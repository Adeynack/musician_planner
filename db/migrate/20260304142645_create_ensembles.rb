class CreateEnsembles < ActiveRecord::Migration[7.2]
  def change
    create_table :ensembles do |t|
      t.string :name
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
