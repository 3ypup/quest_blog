class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|

    	t.integer 	:number
    	t.string 	:name
    	t.string	:short_discription
    	t.string	:description
    	t.string 	:difficulty
    	t.string	:status
    	t.string	:aligment

    	t.integer	:quantity
    	t.text	    :player
    	t.string	:requirements
    	t.string	:reward
    	t.string 	:penalty

      t.timestamps
    end
  end
end
