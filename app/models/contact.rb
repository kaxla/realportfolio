class Contact < ActiveRecord::Base
  class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Website email!",
      :to => "kayla@kaylaamorrison.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
end
