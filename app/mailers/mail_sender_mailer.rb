class MailSenderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mail_sender_mailer.inquiry.subject
  #
  def inquiry
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
