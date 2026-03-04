class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :main_instrument
      t.string :email

      t.timestamps
    end
  end
end
