class ApplicationController < ActionController::API
  #include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :skip_session
  ## Skip sessions and cookies for Rails API
 def skip_session
    request.session_options[:skip] = true
 end
end
