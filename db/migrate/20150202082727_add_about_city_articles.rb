class AddAboutCityArticles < ActiveRecord::Migration
  def change
  	create_table :about_city_articles do |t|
  	  t.string :title
  	  t.string :alias
  	  t.text :intro_text
  	  t.text :full_text
  	  t.integer :group_id
  	  t.string :image
  	  t.string :author  	  
  	  t.boolean	:published  	  
  	end
  end
end
