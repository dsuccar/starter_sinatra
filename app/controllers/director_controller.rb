class DirectorController < Sinatra::Base
    set :views, 'app/views/directors'
    set :method_override, true


    get "/directors" do
        @directors = Director.all
        erb :index
    end

    get '/directors/new' do
        erb :new
    end

    post "/directors" do
      name = params[:name]
      director = Director.create(name: name)
      redirect "directors/#{director.id}"
    end

    get '/directors/:id' do
        @director = Director.find(params[:id])
        erb :show
    end

    get '/directors/:id/edit' do
        @director = Director.find(params[:id])
        erb :edit
    end

    put "/directors/:id" do
        director = Director.find(params[:id])
        director.update(name: params[:name])
        redirect "/directors/#{director.id}"
    end

    delete "/directors/:id" do
      @director = Director.find(params[:id])
      @director.destroy
      redirect "/directors"
    end

    

end