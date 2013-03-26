class Movie < ActiveRecord::Base
  attr_accessible :language, :length, :title, :year

  validates_presence_of :title, :year
  validates_uniqueness_of :title

  after_create :alert_admins

  def alert_admins
    # ...
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
