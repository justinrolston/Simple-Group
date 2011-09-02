class Notifier < ActionMailer::Base
  default :from => "justinrolston+simplegroup@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.send_group_message.subject
  #
  def send_group_message(msg)
    @message = msg

    mail :to => msg.to, :subject => msg.subject

  end
end
