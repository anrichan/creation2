class ProfileMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.profile_mailer.send_when_update.subject
  #
 #  default from: "from@example.com"

 # def profile_email(email, profile)
 # # def registration_email(email)
 #   # @user = user
 #   @profile = profile
 #   mail to: email, subject: "新規ユーザー登録"
 # end

  def send_when_update(user)
     @user = user
     mail to:      user.email,
          subject: '会員情報が更新されました。'
  end
end
