class UserMailer < ApplicationMailer

  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    mail to: @user.email, subject: "Signup confirmation"
  end
end
