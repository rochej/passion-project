get '/ten-percent' do
  @ten_percent = get_messages
  erb :'ten_percent'
end
