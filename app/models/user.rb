class User < ActiveRecord::Base

  has_many :initiated_conversations, foreign_key: :initiator_id, class_name: 'Conversation', inverse_of: :initiator
  has_many :retorts, foreign_key: :retortionist_id, inverse_of: :retortionist

  validates :username, presence: true, uniqueness: true

end
