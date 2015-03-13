class SongRelation < ActiveRecord::Base
  belongs_to :song
  validates :song, uniqueness: { scope: :song, message: "SWERVE"}
end
