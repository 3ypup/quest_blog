class AddOpAligmentToUnits < ActiveRecord::Migration[5.2]
  def change
  	add_column :units, :u_aligment, :string
  end
end
