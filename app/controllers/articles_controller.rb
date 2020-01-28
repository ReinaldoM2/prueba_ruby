class ArticlesController < ApplicationController

	#get /articles
	def index
		@articles = Article.all
	end

	#get /articles/id
	def show
		@articles = Article.find(params[:id])
	end

	#get /articles/new
	def new
		@articles = Article.new
	end

	#post /articles
	def create

		@articles = Article.new(tittle: params[:article][:tittle],
								body: params[:article][:body],
								visit_count: params[:article][:visit_count])

		if @articles.valid?
			@articles.save
			redirect_to article_path
		else 
			@articles.errors
		end

	end

	#put /articles:id
	def update
		
	end
end