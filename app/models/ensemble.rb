# == Schema Information
#
# Table name: ensembles
# Database name: primary
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Ensemble < ApplicationRecord
end
