class User < ApplicationRecord
  has_many :purchases

  after_destroy do |user|
    Purchase
      .where(user_id: user.id)
      .update_all(user_id: nil, status: 'pending')
  end
end
