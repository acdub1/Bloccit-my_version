require 'faker'

#Create unique post
post = Post.first
unless Post.where(:title == 'Unique Post').exists?         
      Post.create!(                 
        title: 'Unique Post',
        body:  'This is the body of a unique post'
      )
      Comment.create!(
        post: post,
        body: 'This is a unique post comment'
      )
end


# Create Posts
10.times do
    Post.create!(
      title:  Faker::Lorem.sentence,
      body:   Faker::Lorem.paragraph
  )
end
  posts = Post.all
# Create Comments
20.times do
    Comment.create!(
      post: posts.sample,
      body: Faker::Lorem.paragraph
  )
end

puts "Seed finished"  
puts "#{Post.count} posts created"  
puts "#{Comment.count} comments created"
