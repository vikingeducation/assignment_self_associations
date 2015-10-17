class Partnership < ActiveRecord::Base
  belongs_to :sender, :foreign_key => :sender_id,
                      :class_name => 'Business'

  belongs_to :receiver, :foreign_key => :receiver_id,
                        :class_name => 'Business'

  validates :receiver_id, :uniqueness => {:scope => :sender_id}
end
