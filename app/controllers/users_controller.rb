class UsersController < ApplicationController
  def get_current_user
    render json: {current_user: current_user}
  end
end
