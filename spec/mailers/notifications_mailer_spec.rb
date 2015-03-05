require "rails_helper"

RSpec.describe NotificationsMailer, type: :mailer do
  describe "Welcome Email" do
    before do
      @email = 
      NotificationsMailer.welcome("danielsteele@hotmail.co.uk", "Dan").deliver_now
    end

    it "should set the correct headers" do 
     #@email.to.should eq(['danielsteele@hotmail.co.uk']) # Old spec

      expect(@email.to).to eq(['danielsteele@hotmail.co.uk']) # New RSpec
      expect(@email.from).to eq(['admin@wegotcoders.com'])
      expect(@email.subject).to eq "Welcome to the Recipe App"
      expect(@email.body.to_s).to match /Welcome Dan/
    end
  end
end
