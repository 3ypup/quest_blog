class AddProfessionsToQuests < ActiveRecord::Migration[5.2]
  def change
    add_column :quests, :soldier, :integer
    add_column :quests, :missioner, :integer
    add_column :quests, :doctor, :integer
    add_column :quests, :cook, :integer
    add_column :quests, :seeman, :integer
    add_column :quests, :carpenter, :integer
    add_column :quests, :parlamenteer, :integer
    add_column :quests, :korrehidor, :integer
    add_column :quests, :trader, :integer
    add_column :quests, :maper, :integer
  end
end
