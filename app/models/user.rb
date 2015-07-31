class User < ActiveRecord::Base

  has_many :initiated_conversations, foreign_key: :initiator_id, class_name: 'Conversation', inverse_of: :initiator

  validates :username, presence: true, uniqueness: true

end
