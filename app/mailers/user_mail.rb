class UserMail < ApplicationMailer
  default from: 'bestsuperflycode@gmail.com'
  def welcome_email(user)

    @user = user
    attachments.inline['profile.png'] = File.read("#{Rails.root}/app/assets/images/profile.png")
    mail(to: @user[:email],	subject: "Mail from bestsuperflycode@gmail.com")

  end
  def send_me(user)
    @user = user
    mail(to: 'bestsuperflycode@gmail.com',subject: "Mail from #{@user[:name]}-#{@user[:subject]}" )
  end
end
