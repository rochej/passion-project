get '/' do
  @users = User.all
  @chores = Chore.all
  erb :index
end

get '/bootstrap' do
  erb :test
end

post '/users/:id/chores/:chore_id' do
  @user = User.find(params[:id]);
  @chore = Chore.find(params[:chore_id]);
  @chore.clean = true;
  @user.chores << @chore
  return @user.id.to_s
end


