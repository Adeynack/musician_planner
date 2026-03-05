# == Schema Information
#
# Table name: ensembles
# Database name: primary
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  website    :string
#  email      :string
#
require "test_helper"

class EnsembleTest < ActiveSupport::TestCase
  test "delete removes assigned projects" do
    ww = ensembles(:windwerk)
    project_ids = ww.projects.map(&:id)

    ww.destroy!

    project_ids.each do |project_id|
      assert_not Project.where(id: project_id).exists?, "project ID #{project_id} should have been deleted along with the ensemble"
    end
  end

  test "project_players returns all players of all projects assigned to this ensemble, without duplicates" do
    ww = ensembles(:windwerk)
    players = ww.project_players

    expected_players = [:cheryle_corkery, :marlin_sipes_esq, :palma_mohr]
    assert_equal expected_players.size, players.count

    ids = players.map(&:id)
    expected_players.each do |player_fixture|
      player = players(player_fixture)
      assert ids.include?(player.id), "expecting the list of players to include #{player_fixture}"
    end
  end
end
