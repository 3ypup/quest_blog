class CreateClists < ActiveRecord::Migration[5.2]
  def change
    create_table :clists do |t|

      t.timestamps
    end
  end
end
