class Emailer < ActionMailer::Base
   def contact(recipient, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = recipient
      @from = 'no-reply@local.com'
      @sent_on = sent_at
	  @body["title"] = 'Welcome to Renovation Solutions'
  	  @body["email"] = 'taylerphillips20@gmail.com'
   	  @body["message"] = message
      @headers = {}
   end
end