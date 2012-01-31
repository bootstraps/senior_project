# == Schema Information
#
# Table name: leagues
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class League < ActiveRecord::Base
  attr_accessible :name
  
  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 },
                    :uniqueness => { :case_sensitive => false}
end
