class User < ActiveRecord::Base
  include Neoid::Node
  
  validates_presence_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  has_many :connections
  
  def self.friends
      # Notice how you can, and should, still sanitize params here. 
      self.connection.execute(sanitize_sql(["SELECT \"connections\".* FROM \"connections\"  
        WHERE \"connections\".\"user_a_id\" = 1 union SELECT \"connections\".* FROM \"connections\"  
          WHERE \"connections\".\"user_b_id\" = 1
        limit ?", 10]))
    end
  
end
