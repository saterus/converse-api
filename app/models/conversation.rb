class Conversation < ActiveRecord::Base

  belongs_to :initiator, class_name: 'User', inverse_of: :initiated_conversations
  has_many :retorts, inverse_of: :conversation

  validates :title, presence: true

end
