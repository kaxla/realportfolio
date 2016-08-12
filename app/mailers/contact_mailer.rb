class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(to: ENV['EMAIL'], subject: 'Website email')
  end
end
