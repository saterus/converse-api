class Retort < ActiveRecord::Base

  belongs_to :conversation, inverse_of: :retorts
  belongs_to :retortionist, class_name: 'User', inverse_of: :retorts
end
