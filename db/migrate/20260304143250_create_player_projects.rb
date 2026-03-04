class CreatePlayerProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :player_projects do |t|
      t.timestamps
      t.references :player, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
    end
  end
end
