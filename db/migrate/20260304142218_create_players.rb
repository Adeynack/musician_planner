class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.timestamps
      t.string :name
      t.string :main_instrument
      t.string :email
    end
  end
end
