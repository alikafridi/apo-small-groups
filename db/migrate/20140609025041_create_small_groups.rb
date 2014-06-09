class CreateSmallGroups < ActiveRecord::Migration
  def change
    create_table :small_groups do |t|
      t.string :name
      t.string :ptas
      t.integer :numPledges
      t.integer :killsWeek
      t.integer :killsTotal
      t.integer :photosWeek
      t.integer :photosTotal
      t.integer :throwdownPoints
      t.integer :initialPoints
      t.integer :pointsWeek
      t.integer :pointsTotal

      t.timestamps
    end
  end
end
