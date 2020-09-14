class UsersController < ApplicationController

    #shows the login form
    get "/login" do
        erb :login
    end
end