class CreatePlayerEnsembles < ActiveRecord::Migration[7.2]
  def change
    create_table :player_ensembles do |t|
      t.timestamps
      t.references :player, null: false, foreign_key: true
      t.references :ensemble, null: false, foreign_key: true
      t.text :note
    end
  end
end
