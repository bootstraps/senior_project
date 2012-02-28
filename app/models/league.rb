# == Schema Information
#
# Table name: leagues
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  password   :string(255)
#

class League < ActiveRecord::Base
  has_many :league_users, :dependent => :destroy
  has_many :users, :through => :league_users
  has_many :games, :dependent => :destroy
    
  attr_accessible :name, :password
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 },
                    :uniqueness => { :case_sensitive => false}
                    
  validates :password,  :presence => true
end
