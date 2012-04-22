class MyMailer < ActionMailer::Base
  default from: "welcome@winkandlink.co"
  
  def welcome_email(user)
    @user = user
    @url  = "http://winkandlink.co"
    mail(:to => user.email, :subject => "Welcome to Wink!")
  end
  
  def wink_email(friend, match, me)
     @friend = friend
	 @match = match
	 @me = me
	 
   	 @url  = "http://winkandlink.co"
     mail(:to => friend.email, :subject => "Introduction request!", :from => "intro@winkandlink.co")
  end
  
end