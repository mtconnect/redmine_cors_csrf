class CorsCsrfController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :require_login

  def csrf_token
    render json: { token: form_authenticity_token }
  end
end
