get '/' do
    music_items = all_music()
    
    erb :'music/index', locals: {
      music_items: music_items
    }
  
  end
  
  get '/music/new' do
    erb :'music/new'
  end
  
  post '/music' do
    name = params['name']
    image_url = params['image_url']
  
    create_music(name, image_url)

  # instead of string interperlation we use '$1' and '$2'
  #if its not a GET request we must always use redirect
    redirect '/'
  end
  
  get '/music/:id/edit' do
    id = params['id']
  
    music = edit_music(id)
    
    erb :'music/edit', locals: {
      music: music
    }
  
  end
  
  put '/music/:id' do
    name = params['name']
    image_url = params['image_url']
    id = params['id']

    update_music(name, image_url, id)
  
    redirect '/'
  end
  
  delete '/music/:id' do
    id = params['id']
  
    delete_music(id)
    # ALWAYS use redirect if it is a POST, PUT or DELETE request being handled. We only use erb files for a GET request.
    redirect '/'
  end