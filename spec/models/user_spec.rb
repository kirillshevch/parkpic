require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryGirl.create(:user) }

  it { expect(user).to have_many(:comments) }
  it { expect(user).to have_many(:photos) }
end
