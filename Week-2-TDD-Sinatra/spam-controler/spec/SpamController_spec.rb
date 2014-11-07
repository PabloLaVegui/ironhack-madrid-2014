require_relative '../lib/SpamController'

RSpec.describe "SpamController" do

  let(:comment_reader_without_spam) { instance_double("Crwos", :comment => "aaa") }
  let(:comment_reader_with_spam) { instance_double("Crws", :comment => "http:// aaaaaaaa http://") }

  #let(:file_writer_correct) { instance_double("FW", :write => true) }
  #let(:file_writer_incorrect) { instance_double("FW", :write => false) }

  it "Check not spam comment" do
    expect(SpamController.new(comment_reader_without_spam).spam?).not_to be_truthy
  end

  it "Check spam comment" do
    expect(SpamController.new(comment_reader_with_spam).spam?).to be_truthy
  end

end
