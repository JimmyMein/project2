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
    
    redirect '/'
  end