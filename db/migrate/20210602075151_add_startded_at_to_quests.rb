class AddStartdedAtToQuests < ActiveRecord::Migration[5.2]
  def change
  	add_column :quests, :started_at, :datetime
  end
end
