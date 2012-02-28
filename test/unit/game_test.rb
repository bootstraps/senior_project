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

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
