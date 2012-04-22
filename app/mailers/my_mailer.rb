class MyMailer < ActionMailer::Base
  default from: "welcome@winkandlink.co"
  
    def welcome_email(user)
    @user = user
    @url  = "http://winkandlink.co"
    mail(:to => user.email, :subject => "Welcome to Wink & Link")
  end
end