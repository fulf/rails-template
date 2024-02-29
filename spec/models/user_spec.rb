# typed: false
# frozen_string_literal: true

require 'rails_helper'

describe 'User' do
  let(:user) { true }

  it 'is valid' do
    expect(user).to be false
  end

  it 'creates something in the db' do
    expect do
      PgHero::SpaceStats.create(database: 'foo', schema: 'bar', relation: '', size: 100, captured_at: Time.current)
    end.to change(PgHero::SpaceStats, :count).by(1)
  end
end
