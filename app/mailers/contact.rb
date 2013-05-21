class Contact < ActionMailer::Base
  default from: "from@example.com"

  def contact_email(args)
    @name = args[:name]
    @desc = args[:desc]
    mail(:to => "taras44@ya.ru", :from => args[:email], :subject => "Email from #{@name}")
  end
end
