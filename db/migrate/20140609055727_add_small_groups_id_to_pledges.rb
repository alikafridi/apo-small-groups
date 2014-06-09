class AddSmallGroupsIdToPledges < ActiveRecord::Migration
  def change
    add_column :pledges, :smallGroups_id, :integer
  end
end
