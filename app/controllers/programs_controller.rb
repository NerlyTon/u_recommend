class ProgramsController < ApplicationController


    get '/programs' do
        @programs = current_user.programs
        erb :show 
    end
    
    get '/programs/new' do
        erb :new
    end
    
    get '/programs/:id' do
        if session[:user_id]
            @program = Program.find_by_id(params[:id])
            erb :show_id
        else
            redirect '/'
        end
    end

    
    get '/programs/:id/edit' do
        
            program = Program.find(params[:id])
            program.update(content: params[:content])
          end
          erb :edit
        end
    end

    post '/programs/new' do
        @program = Program.create(params)
        redirect '/programs'
    end

    patch 'programs/:id' do
        @program = Program.find_by_id(params[:id])
        @program.title = params[:title]
        @program.movie_or_show = params[:movie_or_show]
        @program.summary = params[:summary]
        @program.streaming_service = params[:streaming_service]
        @program.save
    
        erb :show
    end







