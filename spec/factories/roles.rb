# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :role do
    name { Faker::Company.profession }
  end
end
