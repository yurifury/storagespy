class QuoteMailer < ActionMailer::Base
  default :from => "quoterequest@storagespy.net"
 
  def quote_email(request)
    @request = request
    mail(:to => "yuri@tbqh.net", :subject => "Storage Request filed.")
  end
end
