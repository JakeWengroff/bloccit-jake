 require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end

 Post.create!(
    title:  "Bloc is awesome!",
    body:   "Because it has great mentors!"
   )


 Comment.create!(
    body:  "Tell me why"
   )
 

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"


