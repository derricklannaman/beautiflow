require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "email_client" do
    mail = Notifications.email_client
    assert_equal "Email client", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
