class Movie < ActiveRecord::Base
  attr_accessible :language, :length, :title, :year

  validates_presence_of :title, :year
  validates_uniqueness_of :title

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
