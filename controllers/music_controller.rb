get '/' do
    music_items = all_music()
    
    music_sounds = HTTParty.get("https://freesound.org/apiv2/search/text/?query=piano&token=#{ENV['FREESOUND_API_KEY']}")
    
    erb :'music/index', locals: {
      music_items: music_items,
      music_sounds: music_sounds
    }
  
  end
  
  get '/music/new' do
    erb :'music/new'
  end
  
  post '/music' do
    name = params['name']
    sound = params['sound_name']
  
    create_music(name, sound)

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
    sound = params['sound_name']
    id = params['id']

    update_music(name, sound, id)
  
    redirect '/'
  end
  
  delete '/music/:id' do
    id = params['id']
  
    delete_music(id)

    redirect '/'
  end