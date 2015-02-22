task :create_comments => :environment do
    10.times do
     Comment.create!(
      text: Faker::Lorem.paragraph, 
      )
    end
  puts "40 comments have been created in the database."
end

