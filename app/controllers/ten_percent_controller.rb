require 'twilio-ruby'

get '/ten-percent' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Boom!"
  end
  twiml.text
  erb :'ten_percent'
end
