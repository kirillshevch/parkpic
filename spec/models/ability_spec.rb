require 'rails_helper'
require 'cancan/matchers'

describe 'User' do
  describe 'abilities' do
    context 'can' do
      let(:user) { FactoryGirl.create(:user) }
      subject(:ability) { Ability.new(user) }
    end

    context 'cannot' do
      let(:user1) { FactoryGirl.create(:user) }
      subject(:ability) { Ability.new(user1) }
    end
  end
end