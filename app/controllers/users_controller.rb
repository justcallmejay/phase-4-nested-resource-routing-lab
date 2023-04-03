class UsersController < ApplicationController

  # def index
  #   user = User.find(params[:user_id])
  #   items = user.items
  #   if user
  #     render json: items, include: :user
  #   else
  #     render json: { error: "User not found" }, status: :not_found
  #   end
  # end


  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
