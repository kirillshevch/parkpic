require 'rails_helper'

describe Api::UsersController do
  let(:user) { FactoryGirl.create(:user) }
  let(:user1) { FactoryGirl.create(:user) }

  it {expect(subject).to be_a_kind_of ApplicationController}

  before do
    sign_in(user)
    subject.stub(:current_user).and_return(user)
  end

  describe 'GET #index' do
    it 'should return success' do
      get :index, { format: :json }
      expect(response).to have_http_status(:success)
    end
  end
end