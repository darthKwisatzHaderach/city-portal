class AboutCityController < ApplicationController

  def index
  end

  def city_and_neighborhood
    @about_city_groups = AboutCityGroups.all
    @about_city_articles = AboutCityArticles.where(:group_id => 1)
  end

  def show
    @one_article = AboutCityArticles.find_by! alias: params[:alias]
  end

  def companies
    @about_city_articles = AboutCityArticles.where(:group_id => 2)
  end

  def baes
    @about_city_articles = AboutCityArticles.where(:group_id => 3)
  end

  def schools
    @about_city_articles = AboutCityArticles.where(:group_id => 4)
  end

  def msch
    @about_city_articles = AboutCityArticles.where(:group_id => 5)
  end

  def clubs
    @about_city_articles = AboutCityArticles.where(:group_id => 6)
  end

  def karnaval
    @about_city_articles = AboutCityArticles.where(:group_id => 7)
  end

  def attractions
    @about_city_articles = AboutCityArticles.where(:group_id => 8)
  end

  def telecenter
    @one_article = AboutCityArticles.where(:alias => "telecenter").first
  end

  def lyudi
    @about_city_articles = AboutCityArticles.where(:group_id => 10)
  end

end
