class RegistrationsController < ApplicationController
    # create a new user
    def new
        @user = User.new 
    end
end
