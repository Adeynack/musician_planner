# == Schema Information
#
# Table name: players
# Database name: primary
#
#  id              :integer          not null, primary key
#  email           :string
#  main_instrument :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Player < ApplicationRecord
end
