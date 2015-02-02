class AddAboutCityGroups < ActiveRecord::Migration
  def change
  	create_table :about_city_groups do |t|
  	  t.string :name 
  	end
  end
end
