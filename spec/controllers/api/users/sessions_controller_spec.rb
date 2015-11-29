require 'rails_helper'

describe Api::Users::SessionsController do
  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  it {expect(subject).to be_a_kind_of Devise::SessionsController}
end