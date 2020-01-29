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

		@articles = Article.new(name: params[:article][:name],
								brand: params[:article][:brand],
								price: params[:article][:price],
								quantity: params[:article][:quantity])

		if @articles.valid?
			@articles.save
			redirect_to @articles, :flash => { :success => "Message" }
		else
			render :new
		end

	end

	#put /articles:id
	def update

	end
end
