class Business < ActiveRecord::Base
  has_many :initiated_partnerships, :foreign_key => :sender_id,
                                    :class_name => 'Partnership',
                                    :dependent => :destroy

  has_many :partnership_receivers,  :through => :initiated_partnerships,
                                    :source => :receiver

  has_many :received_partnerships,  :foreign_key => :receiver_id,
                                    :class_name => 'Partnership',
                                    :dependent => :destroy

  has_many :partnership_senders,  :through => :received_partnerships,
                                  :source => :sender

  def partners
    Business.select('DISTINCT businesses.*')
      .from('businesses')
      .joins('JOIN partnerships ON businesses.id = partnerships.sender_id')
      .joins('JOIN partnerships AS accepted_partnerships ON partnerships.sender_id = accepted_partnerships.receiver_id')
      .where('accepted_partnerships.sender_id = ?', id)
  end
end
