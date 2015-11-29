require 'rails_helper'

RSpec.describe Photo, type: :model do
  let(:photo) { FactoryGirl.create(:photo) }

  it { expect(photo).to belong_to(:user) }
end
