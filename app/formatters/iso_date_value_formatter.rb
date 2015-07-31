class IsoDateValueFormatter < JSONAPI::ValueFormatter

  class Error < StandardError; end

  class << self
    def format(date_value)
      case date_value
      when Date,DateTime,Time,ActiveSupport::TimeWithZone
        date_value.iso8601
      when String
        date_value
      else
        raise IsoDateValueFormatter::Error.new("#{date_value} was not a Date-like object.")
      end
    end
  end

end
