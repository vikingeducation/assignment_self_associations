class Song < ActiveRecord::Base
  has_many :song_relations
  has_many :songs, :through => :song_relations
end
