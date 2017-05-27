class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team, index: true, foreign_key: true
      t.integer :status
      t.string :name
      t.integer :age
      t.string :nat
      t.string :position
      t.string "market_value"
      t.string "moving_to"
      t.string "moving_from"
      t.string "transfer_fee"
  
      t.timestamps null: false
    end
  end
end
