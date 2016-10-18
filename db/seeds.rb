require 'random_data'

  # # Create Posts
  # 50.times do
  #   Post.create!(
  #     title:  RandomData.random_sentence,
  #     body:   RandomData.random_paragraph
  #     )
  # end
  # posts = Post.all
  #
  # # Create Comments
  # 100.times do
  #   Comment.create!(
  #     post: posts.sample,
  #     body: RandomData.random_paragraph
  #     )
  # end
  # puts "#{Post.count}"
  # post_nk = Post.find_or_create_by(title:"All About Nikola Tesla", body:"Some say he invented wireless power!")
  # puts "#{Post.count}"
  #
  # puts "#{Comment.count}"
  # Comment.find_or_create_by(post:post_nk, body:"My Great Grandfather worked for him and left me the plans!")
  # puts "#{Comment.count}"
  #
  # puts "Seed finished"
  # puts "#{Post.count} posts created"
  # puts "#{Comment.count} comments created"


  # Create Advertisements
  50.times do
    Advertisement.create!(
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph,
      price: RandomData.random_number
      )
  end
  advertisements = Advertisement.all

  puts "#{Advertisement.count}"

  puts "Seed finished"
  puts "#{Advertisement.count} advertisements created"
