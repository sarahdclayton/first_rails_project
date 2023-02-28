class RegistrationsController < ApplicationController
    # create a new user
    def new
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        # this signs in user...runs validation and inserts to database. 
        if @user.save
            # setting a 'session' cookie to keep track of user being signed in
            # session gets encrypted to get stored as a  cookie
            # add user id into the session as database id
            session[:user_id] = @user.id 
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmations)
    end
end
