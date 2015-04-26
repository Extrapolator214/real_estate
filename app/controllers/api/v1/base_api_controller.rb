class Api::V1::BaseApiController < ActionController::Base
  before_action :authenticate_user_from_token!

  private
  def authenticate_user_from_token!
    authenticate_or_request_with_http_token do |token, options|
      @user = nil
      User.find_each do |u|
        if Devise.secure_compare(u.api_token, token)
          @user = u
          return true
        end
      end
    end
  end
end