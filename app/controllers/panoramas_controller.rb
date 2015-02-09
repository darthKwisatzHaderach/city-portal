class PanoramasController < ApplicationController
  def index
    @panoramas_2014 = Panoramas.where(year: '2014')
    @panoramas_2013 = Panoramas.where(year: '2013')
    @panoramas_2012 = Panoramas.where(year: '2012')
    @panoramas_2011 = Panoramas.where(year: '2011')
  end

  def show
    @panorama = Panoramas.find_by! path: params[:path]
  end

  def index_2014
  end

  def index_2013
  end

  def index_2012
  end

  def index_2011
  end
end
