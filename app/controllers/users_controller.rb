class UsersController < ApplicationController
  def index
    redirect_if_not_signed_in
  end
end
