class UsersController < ApplicationController
  def index
    render plain: "I'm in the index action!"
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errros, status: 422
    end
  end

  def show
    # debugger
    users_id = params[:id]
    user = User.find(users_id)
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end

end
