class Person < ApplicationRecord

  # admirer (initiator)
  has_many :feelings,
                    :foreign_key => :admirer_id,
                    :class_name => "Infatuation"

  has_many :crushes,
                    :through => :feelings,
                    :source => :crush


  # crush (recipient)
  has_many :feelings_stirred,
                    :foreign_key => :crush_id,
                    :class_name => "Infatuation"

  has_many :admirers,
                    :through => :feelings_stirred,
                    :source => :admirer

end
