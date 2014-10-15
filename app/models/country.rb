class Country < ActiveRecord::Base
  has_many :borderings, :foreign_key => :bordering_id,
                        :class_name => "Border",
                        :dependent => :destroy
  has_many :bordering_countries, :through => :borderings,
                                 :source => :bordered_country


  has_many :bordereds, :foreign_key => :bordered_id,
                       :class_name => "Border",
                       :dependent => :destroy
  has_many :bordered_countries, :through => :bordereds,
                                :source => :bordering_country
end
