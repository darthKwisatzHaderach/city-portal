class AddPanoramas < ActiveRecord::Migration
  def change
  	create_table :panoramas do |t|
  	  t.string :path
  	  t.integer :year
  	  t.string :img_path
  	  t.string :name
  	end
  end
end
