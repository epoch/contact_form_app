class EnquiryMailer < ActionMailer::Base
  default from: 'wdi.sydney@gmail.com'

  def enquiry_email(enquiry)
    @enquiry = enquiry
    mail(to: 'tsui.daniel@gmail.com', subject: @enquiry.subject)
  end

end