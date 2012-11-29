class SessionsController < ApplicationController
  def create
    authorization = request.env['omniauth.auth']
    ap authorization
    unless @auth = Authorization.find_with_omniauth(authorization)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_with_omniauth(authorization, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user

    render :text => "Welcome, #{current_user.name}."
  end
end
