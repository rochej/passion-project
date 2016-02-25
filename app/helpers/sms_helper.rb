require 'twilio-ruby'

client = Twilio::REST::Client.new "AC058caa09e6317a43e6e15e9723130ee7", "01596fc77343427ae39b45db0383af0a"
# client = Twilio::REST::Client.new ENV['TWILIOSID'], ENV['TWILIOTOKEN']
from = "+15622685058"

users ={
  "+13232400224" => "Rowtch"
}

users.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey, #{value}!"
    )
  puts "Sent message to #{value}"
end
