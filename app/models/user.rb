class User < ActiveRecord::Base

  has_many: :followings

  has_many: :followeds, through: :followings, source: :followed

  has_many: :followers, through: :followings, 
    source: :follower


end
