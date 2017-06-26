# Preview all emails at http://localhost:3000/rails/mailers/profile_mailer
class ProfileMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/profile_mailer/send_when_update
  def send_when_update
    ProfileMailerMailer.send_when_update
  end

end
