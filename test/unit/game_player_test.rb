# == Schema Information
#
# Table name: game_players
#
#  id         :integer(4)      not null, primary key
#  game_id    :integer(4)
#  user_id    :integer(4)
#  place      :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class GamePlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
