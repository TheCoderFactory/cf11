class RegistrationMailer < ActionMailer::Base
  default from: "Coder Factory Registration <info@thecoderfactory.com>"

  def response(registration)
    @registration = registration
    mail(to: @registration.email, subject: @registration.first_name + ", your Coder Factory registration has been received")
  end

  def received(registration)
    @registration = registration
    mail(to: "info@thecoderfactory.com", subject: "Coder Factory Registration Received")
  end
end
