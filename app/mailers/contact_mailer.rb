class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
    mail(
      to: ENV['EMAIL'],
      from: ENV['FROM_EMAIL'],
      subject: 'Website email',
      html_body: '<p>Email from: <%= @contact.name %> (<%= @contact.email %>)</p><p><%= @contact.message %></p>',
    )
  end
end
