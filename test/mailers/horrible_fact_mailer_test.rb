require 'test_helper'

class HorribleFactMailerTest < ActionMailer::TestCase
    test "scareuser" do
    mail = HorribleFactMailer.scareuser
    assert_equal "Scareuser", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
    end
end
