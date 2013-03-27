class GenresController < ApplicationController
  respond_to :html, :json, :xml

  def index
    respond_with @genres = Genre.order('name').all
  end

  def show
    respond_with @genre = Genre.find(params[:id])
  end

  def edit
    respond_with @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    respond_with @genre
  end

  def new
    respond_with @genre = Genre.new
  end

  def create
    @genre = Genre.new(params[:genre])
    @genre.save
    respond_with @genre
  end

  def destroy
    Genre.find(params[:id]).destroy
    redirect_to genres_path
  end
end
