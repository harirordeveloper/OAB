require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "appointment_status" do
    mail = Notifier.appointment_status
    assert_equal "Appointment status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
