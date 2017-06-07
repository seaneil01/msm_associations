class Movie < ApplicationRecord
  validates :director_id, :presence =>TRUE
  validates :title, :presence =>TRUE
  validates :title, :uniqueness =>{:scope => :year}
  validates :year, numericality: { only_integer: TRUE, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050}
  validates :duration, numericality: {allow_blank: TRUE, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800}

  belongs_to(:director, class_name:"Director", :foreign_key => "director_id")

  has_many(:characters, class_name: "Character", :foreign_key => "movie_id")
  has_many :actors, :through => :characters

end