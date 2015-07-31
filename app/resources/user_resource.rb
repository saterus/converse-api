class UserResource < JSONAPI::Resource

  attributes :username

  has_many :initiated_conversations

  def self.updatable_fields(context)
    super - [:created_at, :updated_at]
  end

  def self.creatable_fields(context)
    super - [:created_at, :updated_at]
  end

end
