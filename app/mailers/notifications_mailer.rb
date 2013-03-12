class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@fairfieldgrouprealtors.com"
  default :to => "info@fairfieldgrouprealtors.com"

  def new_message(message)
    @message = message
    mail(:subject => "Email from your website mailer")
  end
end
