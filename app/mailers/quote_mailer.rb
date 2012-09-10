class QuoteMailer < ActionMailer::Base
  default :from => "quoterequest@storagespy.net"
  default :to => %w(yuri@tbqh.net, dyeu2@student.monash.edu, benjamin233@gmail.com)
 
  def quote_email(request)
    @request = request
    mail(:subject => "New Storage Request!")
  end
end
