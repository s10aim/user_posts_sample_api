user1 = User.find_or_create_by!(id: 1, name: 'aimi')
user2 = User.find_or_create_by!(id: 2, name: 'ayane')

5.times do |n|
  user1.posts.create!(body: "#{user1.name}-post-#{n}")
  user2.posts.create!(body: "#{user2.name}-post-#{n}")
end
