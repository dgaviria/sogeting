module UsersHelper
  def match_user(id1, id2)
    @u1 = User.find(id1)
    @u2 = User.find(id2)
    
    
  end
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    image_tag(gravatar_url, alt: user.f_name, class: "gravatar")
  end
end
