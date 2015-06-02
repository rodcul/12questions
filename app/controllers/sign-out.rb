delete '/sessions' do
  flash[:notice] = "Signed out"
  session[:user_id] = nil
  redirect to('/')
end
