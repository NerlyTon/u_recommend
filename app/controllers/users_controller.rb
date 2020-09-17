class UsersController < ApplicationController

    #shows the login form
    get "/login" do
        erb :"/users/login"
    end

    get "/signup" do
        erb :"/users/signup"
    end

    post '/signup' do
        if !params[:username].empty? && !params[:password].empty? && !params[:name].empty?
            user = User.new(username: params[:username], password: params[:password], name: params[:name])
            if user.save
              session[:user_id] = user.id
              redirect '/'
            else
              @error = user.errors.full_messages
              erb :'/users/signup'
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
            flash[:message] = "Welcome back #{user.name}"
            redirect '/'
          else
            
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