class MainController < ApplicationController
    def index 
        if session[:user_id]
            # look up user by id
            @user = User.find_by(id: session[:user_id])
        end
    end
end
