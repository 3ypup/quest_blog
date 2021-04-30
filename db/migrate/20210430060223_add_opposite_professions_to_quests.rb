class AddOppositeProfessionsToQuests < ActiveRecord::Migration[5.2]
  def change
    add_column :quests, :op_soldier, :integer
    add_column :quests, :op_missioner, :integer
    add_column :quests, :op_doctor, :integer
    add_column :quests, :op_cook, :integer
    add_column :quests, :op_seeman, :integer
    add_column :quests, :op_carpenter, :integer
    add_column :quests, :op_parlamenteer, :integer
    add_column :quests, :op_korrehidor, :integer
    add_column :quests, :op_trader, :integer
    add_column :quests, :op_maper, :integer
  end
end
