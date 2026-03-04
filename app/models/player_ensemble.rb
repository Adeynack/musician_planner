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
class PlayerEnsemble < ApplicationRecord
  belongs_to :player
  belongs_to :ensemble

  before_save do
    self.note = note.presence
  end
end
