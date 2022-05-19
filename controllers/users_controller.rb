get '/users/new' do
    erb :'users/new'
  end 
  
  post '/users' do
    name = params['name']
    email = params['email']
    password = params['password']
    
    all_users(name, email, password)
  
    redirect '/'
  end