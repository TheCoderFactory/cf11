class EnquiryMailer < ActionMailer::Base
  default from: "Coder Factory Enquiries <info@thecoderfactory.com>"

  def response(enquiry)
    @enquiry = enquiry
    mail(to: @enquiry.email, subject: @enquiry.name + ", your Coder Factory enquiry has been received")
  end

  def received(enquiry)
    @enquiry = enquiry
    mail(to: "info@thecoderfactory.com", subject: "Coder Factory Enquiry Received")
  end
end
