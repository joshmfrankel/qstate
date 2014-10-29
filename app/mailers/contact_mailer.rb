class ContactMailer < ActionMailer::Base
  default from: "quintstateuga@gmail.com"


  def contact_request(user)
    @user = user

    mail(to: 'meganoed01@gmail.com', subject: 'Contact form message')
  end

  def thank_you(user)
    @user = user

    mail(to: @user.email, subject: 'Thank you for contacting the Quint State committee')
  end


end
