class MoviesController < ApplicationController
  protect_from_forgery
  def index
    # if(params[:looking_for]) {
    #   @looking_for 
    # }
  end
 
  def search
    session[:name] = params[:name]
    @search_term = params[:looking_for]
    @movie_results = Movie.search(@search_term)
  end

  def show
    @movie_info = Movie.details(params[:id])
  end
  
  def new
    # 1.POSTで渡ってきた値を受け取る
    @image = params[:image]
    # @image_url = $_POST
    
    # 2.セッションからインデックスで入れたニックネームを抜き取る
    # @name = session[:name]
    @name = params[:name]
    puts @name

    @hash = params[:hash]
    puts @hash
    # 3.erbに2つ値を渡す
    # @name = Name.new
    @movie_info = Movie.details(params[:id])
  end

end

