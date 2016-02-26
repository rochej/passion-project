
# require 'net/smtp'

# def send_email(to,opts={})
#   opts[:server]      ||= 'localhost'
#   opts[:from]        ||= 'rochej@gmail.com'
#   opts[:from_alias]  ||= 'Roche'
#   opts[:subject]     ||= "10%"
#   opts[:body]        ||= "Important stuff!"

#   msg = <<END_OF_MESSAGE
# From: #{opts[:from_alias]} <#{opts[:from]}>
# To: <#{to}>
# Subject: #{opts[:subject]}

# #{opts[:body]}
# END_OF_MESSAGE

#   Net::SMTP.start(opts[:server]) do |smtp|
#     smtp.send_message msg, opts[:from], to
#   end
# end

# send_email("rochej@gmail.com")
require 'mail'
require 'dotenv'

options= {
            :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'your.host.name',
            :user_name            => 'rochej@gmail.com',
            :password             => ENV['MAIL'],
            :authentication       => 'plain',
            :enable_starttls_auto => true }

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'rochej@gmail.com'
     from 'rochej@gmail.com'
  subject '10%'
     body 'testing sendmail'
end
