class UsersController < ApplicationController

    #shows the login form
    get "/login" do
        erb :login
    end

    get "/signup" do
        erb :signup
    end

    post '/signup' do
        if !params[:username].empty? && !params[:password].empty? && !params[:name].empty?
            user = User.create(username: params[:username], password: params[:password], name: params[:name])
            if user
              session[:user_id] = user.id
              redirect '/'
            else
              redirect '/signup'
            end
        else
            redirect '/signup'
        end
    end

    post '/login' do
        if !params[:username].empty? && !params[:password].empty?
          user = User.find_by(username: params[:username])
          if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            # binding.pry
            redirect '/'
          else
            puts "Please try again"
            redirect '/login'
          end
        else
            puts "Please try again"
          redirect '/login'
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end



    
end