class ConversationResource < JSONAPI::Resource

  attributes :title
  attributes :created_at, :updated_at, format: :iso_date

  has_one :initiator

  def self.updatable_fields(context)
    super - [:created_at, :updated_at]
  end

  def self.creatable_fields(context)
    super - [:created_at, :updated_at]
  end

end
