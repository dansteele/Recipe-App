class Recipe < ActiveRecord::Base
  # has_many :categorisations
  # has_many :recipes, :through => :categorisations
  validates :title, presence: true
end