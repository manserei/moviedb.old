module MoviesHelper
  def delete_movie_link(movie)
    link_to "Delete", movie_path(movie),
      :method => :delete,
      :confirm => "Are you sure?"
  end
end
