require 'emailIsolation'

describe SayHelloToMyLittleFriend do
  it "sends an email" do
  message_dbl = double :message_dbl, send: "sent"
  email_dbl = double(:email_dbl, message: message_dbl)
  almost_email_dbl = double :almost_email_dbl, new: email_dbl

  me = SayHelloToMyLittleFriend.new(almost_email_dbl)
  expect(me.run).to eq("sent") 
  end
end