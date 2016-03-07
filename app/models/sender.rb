class Sender < ActionMailer::Base
  include Resque::Mailer

  @queue = :sender_serve

  default to: "rochej@gmail.com"

  def ten_percent
    mail(from: "rochej@gmail.com", subject: "Test") do |format|
      format.text
      format.html
    end
  end
end
