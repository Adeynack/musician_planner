# == Schema Information
#
# Table name: projects
# Database name: primary
#
#  id          :integer          not null, primary key
#  date        :date
#  name        :string
#  place       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ensemble_id :integer          not null
#
# Indexes
#
#  index_projects_on_ensemble_id  (ensemble_id)
#
class Project < ApplicationRecord
  belongs_to :ensemble
end
