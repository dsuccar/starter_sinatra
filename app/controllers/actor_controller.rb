class ActorController < Sinatra::Base
    set :views, 'app/views/actors'
    set :method_override, true
    
    get '/actors' do
        @actors = Actor.all
        erb :index
    end

    get '/actors/new' do

        erb :new
    end

    post '/actors' do
        name = params[:name]
        actor = Actor.create(name: name)
        redirect "/actors/#{actor.id}"
    end
    
    get '/actors/:id' do
      @actor = Actor.find(params[:id])
      erb :show
    end

    get '/actors/:id/edit' do
        @actor = Actor.find(params[:id])
        erb :edit
    end

    patch '/actors/:id' do
        @actor = Actor.find(params[:id])
        @actor.update(name: params[:name])
        redirect "/actors/#{@actor.id}"
    end

    delete '/actors/:id' do
        @actor = Actor.find(params[:id])
        @actor.destroy
        redirect "/actors"
    end

end