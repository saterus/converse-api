class Conversation < ActiveRecord::Base
  validates :title, presence: true
end
