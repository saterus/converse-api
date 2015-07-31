class Conversation < ActiveRecord::Base

  belongs_to :initiator, class_name: 'User', inverse_of: :initiated_conversations

  validates :title, presence: true

end
