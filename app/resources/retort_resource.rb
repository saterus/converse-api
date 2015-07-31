class RetortResource < JSONAPI::Resource

  attributes :body

  has_one :conversation
  has_one :retortionist

  def self.updatable_fields(context)
    super - [:created_at, :updated_at, :retortionist_id]
  end

  def self.creatable_fields(context)
    super - [:created_at, :updated_at, :retortionist_id]
  end

  def save
    @model.retortionist = User.first
    super
  end

end
