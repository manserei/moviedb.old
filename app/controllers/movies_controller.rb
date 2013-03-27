class MoviesController < ApplicationController
  before_filter :load_movie, :only => [:show, :edit, :update, :destroy]
  respond_to :html, :json, :xml

  def index
    @movies = Movie.all
    respond_with(@movies, :except => :id)
  end

  def show
    respond_with(@movie, :except => :id)
  end

  def edit
    respond_with @movie
  end

  def update
    @movie.update_attributes(params[:movie])
    respond_with @movie
  end

  def new
    @movie = Movie.new
    respond_with @movie
  end

  def create
    @movie = Movie.new(params[:movie])
    @movie.save
    respond_with @movie
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

private

  def load_movie
    @movie = Movie.find(params[:id])
  end
end
