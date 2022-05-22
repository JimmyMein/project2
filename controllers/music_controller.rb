get '/' do
    music_items = all_music()
    music_suggestions = all_music_suggestions()
    erb :'music/index', locals: {
      music_items: music_items,
      music_suggestions: music_suggestions
    }
  end
  
  get '/music/new' do
    erb :'music/new'
  end
  
  post '/music' do
    name = params['name']
    sound_name = params['sound_name']
    img_url = params['img_url']
    url = params['url']

    create_music(name, sound_name, img_url, url) || add_sug_music(name, sound_name, img_url, url)

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
    sound_name = params['sound_name']
    img_url = params['img_url']
    url = params['url']
    id = params['id']

    update_music(name, sound_name, img_url, url, id)
  
    redirect '/'
  end
  
  get '/music/suggestions' do
    music_suggestions = all_music_suggestions()

    erb :'music/suggestions', locals: {
        music_suggestions: music_suggestions
    }
  end

  delete '/music/:id' do
    id = params['id']
  
    delete_music(id)

    redirect '/'
  end
