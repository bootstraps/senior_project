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

require 'test_helper'

class LeagueUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
