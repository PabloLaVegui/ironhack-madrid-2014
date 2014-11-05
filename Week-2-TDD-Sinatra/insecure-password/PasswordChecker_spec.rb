require './PasswordChecker'

RSpec.describe "CheckPassword" do

  it "sends an email when password is shorter than 7 chars" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method).with("Mensaje")  # Mock + Spy
  PasswordChecker.new(mailer).check_password("mail@mail.com", "aaaa")
  end

  it "not sends an email when password is correct" do
    mailer = double("mailer")
    expect(mailer).not_to receive(:send_method)             # Sólo mock
    PasswordChecker.new(mailer).check_password("mail@mail.com", "aa1&Laabbbb")
  end

  it "send an email if pass not contains a letter" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
  PasswordChecker.new(mailer).check_password("mail@mail.com", "12345678")
  end

  it "send an email if pass not contais a upercase letter" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
  PasswordChecker.new(mailer).check_password("mai@maill.com", "12aa@345678")
  end

  it "send an email if pass not contais a downcase letter" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
  PasswordChecker.new(mailer).check_password("mail@mail.com", "12AA@345678")
  end

  it "send an email if pass not contains a symbol" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
  PasswordChecker.new(mailer).check_password("mail@mail.com", "123a45678")
  end

  it "send a mail if pass contains mail name" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
    PasswordChecker.new(mailer).check_password("pablo@mail.com", "1@W2pablo78")
  end

  it "send a mail if pass contains domain name" do
    mailer = double("mailer")
    expect(mailer).to receive(:send_method)
    PasswordChecker.new(mailer).check_password("pablo@mail.com", "1@W2maillo78")
  end

end
