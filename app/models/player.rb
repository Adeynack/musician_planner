# == Schema Information
#
# Table name: players
# Database name: primary
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string           not null
#  main_instrument :string
#  email           :string
#
class Player < ApplicationRecord
  has_many :player_ensembles, dependent: :delete_all
  has_many :ensembles, through: :player_ensembles

  has_many :player_projects, dependent: :delete_all
  has_many :projects, through: :player_projects

  validates :name, presence: true

  before_save do
    self.email = email.presence
    self.main_instrument = main_instrument.presence
  end

  class << self
    if Rails.env.development?
      # Useful to generating fake fixtures.
      def generate_fixtures_yaml(n: 10)
        n.times
          .map { generate_fixture }
          .map { |p| [p.name.parameterize(separator: "_"), p.slice(:name, :email, :main_instrument).to_h] }
          .to_h
          .to_yaml
          .delete_prefix("---\n")
      end

      def generate_fixture
        name = Faker::Name.name
        name_param = name.parameterize(separator: "_")
        main_instrument = ["Percussion", "Flute", "Clarinette", "Trompet", "Trombone"].sample

        new(name:, email: "#{name_param}@example.com", main_instrument:)
      end
    end
  end
end
