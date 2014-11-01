class Message

  attr_reader :type

  #def initialize message, contact_data
  def initialize contact_data
    #@message = message
    @contact_data = contact_data
    @type = type
  end


  def type

    if is_for_twitter? @contact_data
      type = "Twitter"
    end

    if is_for_email? @contact_data
      type = "Email"
    end

    if is_for_phone? @contact_data
      type = "Phone"
    end

    type

  end

  def is_for_twitter? contact_data
    contact_data[0] == '@'
  end

  def is_for_email? contact_data
    contact_data[0] != '@' && contact_data.include?('@')
  end

  def is_for_phone? contact_data
    contact_data.to_i.to_s == contact_data
  end

  def send
    # TODO
  end

end
