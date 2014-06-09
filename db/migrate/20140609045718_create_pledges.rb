class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :name
      t.string :smallGroup
      t.integer :killsWeek
      t.boolean :diedWeek
      t.integer :killsTotal
      t.integer :deathsTotal

      t.timestamps
    end
  end
end
