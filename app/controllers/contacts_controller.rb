class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to page_path('contact_thanks')
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end

