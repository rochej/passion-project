def total_points(user, month)
  total_points = 0
  user.goldstars.each do |goldstar|
    total_points += goldstar.chore.points if goldstar.created_at.month == month.to_i
  end
  return total_points
end

def all_user_points(month)
  all_user_points = 0
  users = User.all
  users.each do |user|
    all_user_points += total_points(user, month)
  end
  return all_user_points
end

def dollars(user, month)
  total_points = total_points(user, month)
  all_points = all_user_points(month)
  month_dollars = 50
  dollars = (total_points.to_f/all_points.to_f) * month_dollars
  dollars = dollars.to_i
  return dollars
end
