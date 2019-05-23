class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHelloToMyLittleFriend
  
  def initialize(almost_email = EmailClient)
    @almost_email = almost_email
  end
  def run
    email = @almost_email.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end