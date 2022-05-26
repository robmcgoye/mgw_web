class HttpUrlValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value.present? && compliant?(value)
      record.errors.add(attribute, "is not a valid web link")
    end
  end

  private
  def compliant?(value)
    begin
      uri = URI.parse(value)
      uri.is_a?(URI::HTTP) && !uri.host.nil?
    rescue 
      false
    end
  end

end