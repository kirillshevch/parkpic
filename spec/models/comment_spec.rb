require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { FactoryGirl.create(:comment) }

  it { expect(comment).to belong_to(:user) }
  it { expect(comment).to belong_to(:comment) }
  it { expect(comment).to have_many(:comments) }
  it { expect(comment).to belong_to(:commentable) }
end
