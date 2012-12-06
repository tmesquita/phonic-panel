class SessionsController < ApplicationController
  def create
    authorization = request.env['omniauth.auth']

    unless @auth = Authorization.find_with_omniauth(authorization)
      @auth = Authorization.create_with_omniauth(authorization, current_user)
    end

    self.current_user = @auth.user

    render :text => "Welcome, #{current_user.name}."
  end
end
