class Notifications < ActionMailer::Base
  default from: "derricklannaman@gmail.com"


  def welcome_email(stylist)
    @stylist = stylist
    @greeting = "Hi"

    mail to: "derricklannaman@gmail.com", :subject => "Welcome email from Beautiflow"
  end
end
