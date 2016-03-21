get '/monthly' do
  @users = User.all
  erb :monthly_accounting
end

get '/monthly-email' do
  Mailer.notification
end

post '/monthly/:id' do
  users = User.all
  month = params[:id]
  return erb :_show_one_month, layout: false, locals: {users: users, month: month}
end