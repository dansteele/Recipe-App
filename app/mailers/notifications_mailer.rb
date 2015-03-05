class NotificationsMailer < ApplicationMailer
  def welcome(email, name)
    @name = name
    mail :to => "danielsteele@hotmail.co.uk", :subject => "Welcome to the Recipe App"
  end
end
