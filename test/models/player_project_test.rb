# == Schema Information
#
# Table name: player_projects
# Database name: primary
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  player_id  :integer          not null
#  project_id :integer          not null
#  note       :text
#
# Indexes
#
#  index_player_projects_on_player_id   (player_id)
#  index_player_projects_on_project_id  (project_id)
#
# Foreign Keys
#
#  player_id   (player_id => players.id)
#  project_id  (project_id => projects.id)
#
require "test_helper"

class PlayerProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
