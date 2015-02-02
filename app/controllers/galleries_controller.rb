class GalleriesController < ApplicationController

  def gallery_to_array(gallery)
    rows_count = (gallery.count/4)+1
    arrays = []
    for i in 1..rows_count do      
      row = gallery.shift(4)
      arrays << row
    end
    return arrays
  end

  def index
    @gallery = Gallery.where(:group => '2011')       
  end

  def show
  end
  
  def year_2011
    @gallery = Gallery.where(:group => '2011')    
  end
  
  def old_zarechny
    @gallery = Gallery.where(:group => '0000')    
  end

  def city_from_above
    @gallery = Gallery.where(:group => '1001')    
  end
  
  def carnaval_gallery_part_1
    @gallery = Gallery.where(:group => '11')    
  end
  
  def carnaval_gallery_part_2
    @gallery = Gallery.where(:group => '12')    
  end
  
  def carnaval_gallery_part_3
    @gallery = Gallery.where(:group => '13')    
  end
  
  def baes_gallery
    @gallery = Gallery.where(:group => '84')    
  end
  
  def aleschenkova_boulevard_gallery
    @gallery = Gallery.where(:group => '85')    
  end

end
