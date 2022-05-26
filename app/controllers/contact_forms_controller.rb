class ContactFormsController < ApplicationController
  invisible_captcha only: [:create], honeypot: :nickname

  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(contact_params)
    if @contact.valid?
      # send email
      ContactUsMailer.send_message(@contact).deliver_now
      flash[:notice] = "Thank you for your message!"
      redirect_to new_contact_form_path
    else
      render :new
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact_form).permit(:name, :email, :message, :nickname)
    end


end
