class AddNews < ActiveRecord::Migration
  def change
  	create_table :news do |t|
  	  t.string :title
  	  t.string :alias
  	  t.text :intro_text
  	  t.text :full_text
  	  t.string :image
  	  t.string :author  	  
  	  t.boolean	:published
  	  t.datetime :created
  	end
  end
end
