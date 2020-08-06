class ApplicationController < ActionController::Base
before_action :basic_auth
protect_form_factory with: :exception

  private 
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '2222'
    end
  end
end
