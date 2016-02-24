get '/' do
  @users = User.all
  @chores = Chore.all
  erb :index
end

post'/users/:id' do
  session[:user_id] = params[:id]
end

get '/bootstrap' do
  erb :test
end

post '/users/chores/:chore_id' do
  @user = User.find(session[:user_id]);
  @chore = Chore.find(params[:chore_id]);
  @user.chores << @chore
  return @user.id.to_s
end

get '/chores' do
  @chores = Chore.all
  return erb :'_dirty_sentence', :layout => false, :locals =>{chores: @chores}
end

get '/monthly' do
  @users = User.all
  erb :monthly_accounting
end

post '/monthly/:id' do
  users = User.all
  month = params[:id]
  return erb :_show_one_month, layout: false, locals: {users: users, month: month}
end


