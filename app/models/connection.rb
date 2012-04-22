class Connection < ActiveRecord::Base
  
  belongs_to :user_a, :class_name => "User", :foreign_key => :user_a_id
  belongs_to :user_b, :class_name => "User", :foreign_key => :user_b_id
  
  include Neoid::Relationship
  
  neoidable :start_node => :user_a, :end_node => :user_b, :type => :connections
  
end
