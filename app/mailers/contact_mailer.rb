class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def thank_you(user)
    mail(to: 'josh@joshfrankel.me', subject: 'Welcome to My Awesome Site')
  end

end
