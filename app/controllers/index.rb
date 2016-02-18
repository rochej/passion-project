get '/' do
  @users = User.all
  @chores = Chore.all
  erb :index
end

post '/users/:id/chores/:chore_id' do
  @user = User.find(params[:id]);
  @chore = Chore.find(params[:chore_id]);
  @user.chores << @chore
  return @user.id.to_s
end


