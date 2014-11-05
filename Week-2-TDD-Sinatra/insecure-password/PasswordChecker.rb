class PasswordChecker

  def initialize mailer
    @mailer = mailer
  end

  def check_password email, password
    if (
        password.size < 7 ||
        !include_letters_uppercase_and_downcase?(password) ||
        !include_numbers?(password) ||
        !include_symbols?(password) ||
        include_name?(email, password) ||
        include_domain?(email, password)
    )

      @mailer.send_method("Mensaje")
    end
  end

  def include_letters_uppercase_and_downcase? password
    password.match(/[A-Z]/) && password.match(/[a-z]/)
  end

  def include_numbers? password
    password.match(/\d/)
  end

  def include_symbols? password
    password.match(/\W/)
  end

  def include_name? mail, password
    password.include?(extract_name(mail))
  end

  def include_domain? mail, password
    password.include?(extract_domain(mail))
  end

  def arrob_position mail
    mail.index("@")
  end

  def extract_name mail
    mail[0...arrob_position(mail)]
  end

  def extract_domain mail
    init_pos = arrob_position(mail) + 1
    mail[init_pos...point_position(mail)]
  end

  def point_position mail
    mail.index(".")
  end

end
