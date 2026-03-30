class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :random, ->(limit = 1) { order("RANDOM()").first(limit) }
end
