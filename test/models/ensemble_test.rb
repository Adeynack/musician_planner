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
  # test "the truth" do
  #   assert true
  # end
end
