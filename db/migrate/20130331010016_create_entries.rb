class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :city
      t.integer :zip
      t.decimal :initial_offer, :precision => 8, :scale => 2
      t.decimal :negotiated_offer, :precision => 8, :scale => 2
      t.decimal :signing_bonus, :precision => 8, :scale => 2
      t.integer :months_since_last_round
      t.integer :years_experience
      t.boolean :equity
      t.text :notes
      t.date :date

      t.timestamps
    end
  end
end
