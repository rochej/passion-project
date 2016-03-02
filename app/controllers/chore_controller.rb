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