class UlnsController < ApplicationController
  def new
  end

  def generate
    number_to_generate = params[:number].to_i
    @ulns = number_to_generate.times.map { generate_valid_uln }
  end

private

  def generate_valid_uln
    uln = nil
    until uln.present? && uln.valid?
      uln = generate_new_uln
    end
    uln.tap(&:save!)
  end

  def generate_new_uln
    Uln.new(number: '1%09d' % rand(10 ** 9), name: Faker::Name.name)
  end
end
