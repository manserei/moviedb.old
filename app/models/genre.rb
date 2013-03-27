class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :movies

  # validates_presence_of :name
  # validates_uniqueness_of :name
  # validates_length_of :name, :minimum => 3
  #
  # auch moeglich:
  #
  # validates_inclusion_of :name, :in => ['Action', 'Science Fiction', ...]

  validates :name,
    :presence   => true,
    :uniqueness => true,
    :length     => { :minimum => 3 }
end
