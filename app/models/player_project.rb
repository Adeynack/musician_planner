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
class PlayerProject < ApplicationRecord
  belongs_to :player
  belongs_to :project

  before_save do
    self.note = note.presence
  end
end
