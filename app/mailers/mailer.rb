class Mailer < ActionMailer::Base

  def notification
    mail(from: "rochej@gmail.com", to: "rochej@gmail.com", subject: "Test") do |format|
      format.text
      format.html
    end
  end
end