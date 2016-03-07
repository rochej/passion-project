get '/' do
  @users = User.all
  @chores = Chore.all
  Sender.ten_percent.deliver
  erb :index
end

post'/users/:id' do
  session[:user_id] = params[:id]
end
