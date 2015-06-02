get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  email = params[:email]
  password = params[:password]
  user = User.authenticate(email, password)
  if user
    session[:user_id] = user.id
    redirect('/')
  end
end
