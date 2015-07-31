class ConversationResource < JSONAPI::Resource

  attributes :title, :created_at, :updated_at

  def self.updatable_fields(context)
    super - [:created_at, :updated_at]
  end

  def self.creatable_fields(context)
    super - [:created_at, :updated_at]
  end

end
