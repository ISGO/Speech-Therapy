class UserMailer < ActionMailer::Base
  default from: "Mailgun Sandbox <postmaster@sandbox4f0e453d29ae418fb38d07c33ed1a0c7.mailgun.org>"

  def welcome_email(patient)
    @patient = patient
    @url  = 'http://speech-therapy.herokuapp.com/'
    mail(to: @patient.mail, subject: 'Welcome to Speech Therapy')
  end
end
