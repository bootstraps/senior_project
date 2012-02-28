# == Schema Information
#
# Table name: league_users
#
#  id         :integer(4)      not null, primary key
#  league_id  :integer(4)
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class LeagueUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :league
  
  validates :user_id, :presence => true,
                      :uniqueness => { :case_sensitive => false }
                      
  validates :league_id, :presence => true
  
  def has_password?(submitted_password)
    password == submitted_password
  end
  
  def self.authenticate(id, submitted_password)
    leagueuser = find_by_id(id)
    return nil if leagueuser.nil?
    return leagueuser if leagueuser.has_password?(submitted_password)
  end
end
