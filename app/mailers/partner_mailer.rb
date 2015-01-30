class PartnerMailer < ActionMailer::Base
  default from: "Coder Factory Application <info@thecoderfactory.com>"

  def response(partner)
    @partner = partner
    mail(to: @partner.email, subject: @partner.name + ", your Coder Factory partnership request has been received")
  end

  def received(partner)
    @partner = partner
    mail(to: "info@thecoderfactory.com", subject: "Coder Factory Partnership Request Received")
  end
end
