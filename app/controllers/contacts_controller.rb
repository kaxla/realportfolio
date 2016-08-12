class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if ContactMailer.contact_email(@contact).deliver_now
      redirect_to page_path('contact_thanks')
    else
      flash.now[:error] = 'There was a problem, please try again'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
