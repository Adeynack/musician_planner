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
class Ensemble < ApplicationRecord
  has_many :player_ensembles, dependent: :delete_all
  has_many :players, through: :player_ensembles

  has_many :projects, dependent: :destroy
  has_many :project_players, -> { distinct }, class_name: "Player", through: :projects, source: :players

  validates :name, presence: true

  before_save do
    self.website = website.presence
    self.email = email.presence
  end
end
