class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|

    	t.text 		:name
    	t.integer 	:number
    	t.string 	:player

    	t.references :quest, foreign_key: true


      t.timestamps
    end
  end
end
