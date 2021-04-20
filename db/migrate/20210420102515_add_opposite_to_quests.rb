class AddOppositeToQuests < ActiveRecord::Migration[5.2]
  def change
    add_column :quests, :have_opposite, :string
    add_column :quests, :opposite_description, :string
    add_column :quests, :opposite_requirements, :string
    add_column :quests, :opposite_reward, :string
    add_column :quests, :opposite_players, :string
    add_column :quests, :opposite_aligment, :string
  end
end
