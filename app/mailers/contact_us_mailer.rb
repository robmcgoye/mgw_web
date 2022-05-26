class ContactUsMailer < ApplicationMailer

  def send_message(contact_form)
    @contact = contact_form
    mail(to: @contact.email, subject: '[MGW] Contact Us Message')
  end

end
