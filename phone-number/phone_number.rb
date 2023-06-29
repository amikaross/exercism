module PhoneNumber
  def self.clean(dirty_number)
    result = dirty_number.gsub(/[^0-9]/, "").delete_prefix("1")
    if result.match(/\A(\d{3})?[01]/) || result.length != 10
      nil
    else 
      result
    end
  end
end