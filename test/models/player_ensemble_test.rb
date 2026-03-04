# == Schema Information
#
# Table name: player_ensembles
# Database name: primary
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  player_id   :integer          not null
#  ensemble_id :integer          not null
#  note        :text
#
# Indexes
#
#  index_player_ensembles_on_ensemble_id  (ensemble_id)
#  index_player_ensembles_on_player_id    (player_id)
#
require "test_helper"

class PlayerEnsembleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
