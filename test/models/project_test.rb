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
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
