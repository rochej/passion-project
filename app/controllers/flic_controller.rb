post '/flic' do
  p params
  fliced = params.split(",")
  @user = User.find_by("name=?", fliced[0])
  @chore = chore.find_by("name=?", fliced[1])
  @user.chores << @chore
  p @user.chores
end