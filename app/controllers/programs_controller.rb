class ProgramsController < ApplicationController


    get '/programs' do
        @programs = current_user.programs
        erb :"/programs/show" 
    end
    
    get '/programs/new' do
        erb :"/programs/new"
    end
    
    get '/programs/:id' do
        @program = Program.find_by_id(params[:id])
        if current_user && @program.user_id == current_user.id
            
            erb :"/programs/show_id"
        else
            redirect '/'
        end
    end

    
    get '/programs/:id/edit' do
        @program = Program.find_by(id:params[:id])
        erb :"/programs/edit"
    end
#receive params from the new program form
    post '/programs' do
        program = Program.create(title: params[:title], movie_or_show: params[:movie_or_show], summary: params[:summary], streaming_service: params[:streaming_service], user_id: current_user.id)
        redirect '/programs'
    end

    patch '/programs/:id' do
        # binding.pry
        @program = Program.find_by_id(params[:id])
        if current_user.id == @program.user_id
            
        @program.title = params[:title]
        @program.movie_or_show = params[:movie_or_show]
        @program.summary = params[:summary]
        @program.streaming_service = params[:streaming_service]
        @program.save
        # program = Program.find_by(id:params[:id])
        # if current_user.id = program.user_id
        #     program.update(params[:title])
          
          redirect "/programs/#{@program.id}"
        else
            redirect "/programs/#{@program.id}"
        end
    end

    delete '/programs/:id' do
        @program = Program.find(params[:id])
        @program.destroy
        redirect '/programs'
    end


end
    
        









