namespace :db do
  desc "fill second_word info in the db"
  task :populate_second_words => :environment do
    N = 100
    require 'faker'
    N.times do
      u = SecondWord.new(

        data: [

          "ghost",
          "haze",
          "jello",
          "fizz",
          "pickle",
          "buzz",
          "jive",
          "punch",
          "shooter",
          "Volvo",
          "beamer",
          "Porche",
          "moonglow",
          "fever",
          "sunset",
          "change-O",
          "treasure",
          "bebop",
          "peace-out",
          "construct",
          "blaze",
          "ranger",
          "triumph",
          "kitten",
          "shockwave",
          "bonanza",
          "method",
          "man",
          "dare",
          "drama",
          "special",
          "harmony",
          "junkie",
          "winner",
          "ninja",
          "Jane",
          "steel",
          "creampuff",
          "monster",
          "honeymoon",
          "reserve",
          "tightrope",
          "rowboat"

          ].sample,

        mood: [

          "happy",
          "lonely",
          "inspired",
          "dark"

        ].sample

        )

      u.save
    end
  end
  puts "100 Fake second_word records have been created and stored in db"
end
