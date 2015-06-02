get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users' do
  @user = User.new(email: params[:email],
                   password: params[:password],
                   password_confirmation: params[:password_confirmation],
                   first_name: params[:first_name],
                   last_name: params[:last_name],
                   team: params[:team])
  if @user.save
    session[:user_id] = @user.id
    flash[:notice] = 'User signup successful'
    redirect to('/')
  else
    flash.now[:errors] = @user.errors.full_messages
    erb :"users/new"
  end
end
