require 'rubygems'
require 'twilio-ruby'

helpers do
  def get_messages
  # set up a client to talk to the Twilio REST API
  client = Twilio::REST::Client.new ENV['TWILIOSID'], ENV['TWILIOTOKEN']

  from = "+15622685058"
  this_weeks= []
  messages = client.account.messages.list

  messages.each do |message|
    if message.from != from
      sentence = []
      user = User.where("cell = ?", message.from)
        if user != []
          sentence << user[0].name
        else
          sentence << "A Naked Lady"
        end
      sentence << ": "
      sentence << message.body
      sentence = sentence.join("")
      this_weeks << sentence
    end
  end
return this_weeks
end

end
