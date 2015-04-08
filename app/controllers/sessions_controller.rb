class SessionsController < ApplicationController

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @current_user = user;
      redirect_to root_path #change this.
    else
      flash.now[:error] = "INVALID name/password...."
      render 'new'

    end
  end

def new
end

def destroy
	if signed_in?
		session[:user_id] = nil					else
		flash[:notice] = "You need to sign in first"			end
	redirect_to signin_path
 end

def new

end

end
