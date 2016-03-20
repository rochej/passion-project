get '/' do
  @users = User.all
  @chores = Chore.all
  erb :index
end

post'/users/:id' do
  session[:user_id] = params[:id]
end
