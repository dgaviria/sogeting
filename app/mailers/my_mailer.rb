class MyMailer < ActionMailer::Base
  default from: "welcome@winkandlink.co"
  
  def welcome_email(user)
    @user = user
    @url  = "http://winkandlink.co"
    mail(:to => user.email, :subject => "Welcome to Wink!")
  end
  
  def wink_email(user, match)
     @user = user
	 @match = match
   	 @url  = "http://winkandlink.co"
     mail(:to => user.email, :subject => "Introduction request!", :from => "intro@winkandlink.co")
  end
  
end