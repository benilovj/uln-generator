class Uln < ApplicationRecord
  validates_uniqueness_of :number
end
