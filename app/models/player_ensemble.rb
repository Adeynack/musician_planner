# == Schema Information
#
# Table name: player_ensembles
# Database name: primary
#
#  id          :integer          not null, primary key
#  note        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ensemble_id :integer          not null
#  player_id   :integer          not null
#
# Indexes
#
#  index_player_ensembles_on_ensemble_id  (ensemble_id)
#  index_player_ensembles_on_player_id    (player_id)
#
class PlayerEnsemble < ApplicationRecord
  belongs_to :player
  belongs_to :ensemble
end
