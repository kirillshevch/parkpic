class ApiController < ApplicationController
  respond_to :json
  load_and_authorize_resource except: [:create]
end
