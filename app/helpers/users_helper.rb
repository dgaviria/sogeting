module UsersHelper
  def match_user(id1, id2)
    @u1 = User.find(id1)
    @u2 = User.find(id2)
    
    
  end
end
