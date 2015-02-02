class NewsController < ApplicationController

	def index
		@news = News.paginate(:page => params[:page]).order("news.id DESC")
	end

	def show
		@one_news = News.find_by! alias: params[:alias]
	end

end
