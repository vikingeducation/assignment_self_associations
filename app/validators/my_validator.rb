class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.initiator_id == record.receiver_id
      record.errors[:subscribing_id] << 'initiator_id can not be equal to receiver_id'
    end
  end
end