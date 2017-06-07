class Character < ApplicationRecord
  validates :movie_id, :presence =>TRUE
  validates :actor_id, :presence =>TRUE

  belongs_to(:actor, class_name:"Actor", :foreign_key => "actor_id")
  belongs_to(:movie, class_name:"Movie", :foreign_key => "movie_id")
end
