class Connection < ActiveRecord::Base
  belongs_to :user_a, :class => "User", :foreign_key => :user_a_id
  belongs_to :user_b, :class => "User", :foreign_key => :user_b_id
  
  include Neoid::Relationship
  
  neoidable do |c|
    c.relationship :start_node => :user_a, :end_node => :user_b, :type => :connections
end
