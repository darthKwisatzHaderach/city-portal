class AddGalleries < ActiveRecord::Migration
  def change
  	create_table :galleries do |t|
  	  t.text :controller
  	  t.integer :item_id
  	  t.integer :group
  	  t.string :file
  	  t.string :author  	  
  	end
  end
end
