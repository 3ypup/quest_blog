class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|

    	t.integer :number
    	t.string 	:name
    	t.integer	:gold
    	t.integer	:good_quests_done
    	t.integer	:bad_quests_done
    	t.string	:quests_done_list

    	t.integer	:points
    	t.string 	:profession

      t.timestamps
    end
  end
end
