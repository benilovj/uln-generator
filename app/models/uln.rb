require 'luhn'

class Uln < ApplicationRecord
  validates_uniqueness_of :number

  validate :number_is_not_a_valid_luhn_number

private
  def number_is_not_a_valid_luhn_number
    if Luhn.valid?(number.to_i)
      errors.add(:number, "cannot be a Luhn-validated number")
    end
  end
end
