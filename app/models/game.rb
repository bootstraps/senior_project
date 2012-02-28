# == Schema Information
#
# Table name: games
#
#  id         :integer(4)      not null, primary key
#  league_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  game_date  :date
#

class Game < ActiveRecord::Base
  belongs_to :league
  has_many :game_players, :dependent => :destroy
  has_many :users, :through => :game_players 
  accepts_nested_attributes_for :game_players,
        :reject_if => lambda { |a| a[:user_id].blank? },
        :allow_destroy => true
  
  
  validates :league_id,   :presence   => true
  #validates :game_date,   :presence   => true
end
