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
  @user.chores << @chore
  return @user.id.to_s
end

get '/chores' do
  @chores = Chore.all
  return erb :'_dirty_sentence', :layout => false, :locals =>{chores: @chores}
end


