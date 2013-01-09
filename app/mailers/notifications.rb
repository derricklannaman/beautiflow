class Notifications < ActionMailer::Base
  default from: "beautiflowme@gmail.com"


  def welcome_email(stylist)
    @stylist = stylist
    @url = "http://damp-badlands-6555.herokuapp.com/"

    mail to: stylist_email, :subject => "Welcome to Beautiflow"
  end
end
