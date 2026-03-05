# == Schema Information
#
# Table name: projects
# Database name: primary
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string           not null
#  ensemble_id :integer          not null
#  date        :date             not null
#  place       :string
#
# Indexes
#
#  index_projects_on_ensemble_id  (ensemble_id)
#
# Foreign Keys
#
#  ensemble_id  (ensemble_id => ensembles.id)
#
class Project < ApplicationRecord
  belongs_to :ensemble

  has_many :player_projects, dependent: :delete_all
  has_many :players, through: :player_projects

  validates :name, presence: true
  validates :date, presence: true

  before_save do
    self.place = place.presence
  end
end
