class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def welcome
    redirect_to requests_path if user_signed_in?
  end
end
