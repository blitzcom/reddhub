class User::AvatarsController < ApplicationController
  before_action :authenticate_user!

  def update
    current_user.avatar.attach(params[:avatar])

    redirect_to edit_user_registration_path
  end
end