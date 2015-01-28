class FastTrackApplicationMailer < ActionMailer::Base
  default from: "Coder Factory Application <info@thecoderfactory.com>"

  def response(fast_track_application)
    @fast_track_application = fast_track_application
    mail(to: @fast_track_application.email, subject: @fast_track_application.first_name + ", your Fast Track application has been received")
  end

  def received(fast_track_application)
    @fast_track_application = fast_track_application
    mail(to: "info@thecoderfactory.com", subject: "Fast Track Application Received")
  end
end
