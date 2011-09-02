require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "send_group_message" do
    mail = Notifier.send_group_message(messages(:one))
    assert_equal "MyString", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["justinrolston+simplegroup@gmail.com"], mail.from
    assert_match "MyText", mail.body.encoded
  end

end
