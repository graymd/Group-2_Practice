namespace :db do
  desc "fill first_words info in the db"
  task :create_shoutouts => :environment do
    10.times do
     Shoutout.create!(
      text: [

          "Three's a crowd.",
          "Let's party.",
          "heyyyyyyyy",
          "congrats!",
          "You are special.",
          "Here's to you!",
          "booyah!",
          "haters gonna hate",
          "ice ice baby",
          "fun times",
          "Everybody Footloose!"

          ].sample,

      mood: "happy"
      )
    end
    10.times do
     Shoutout.create!(
      text: [

          "Don't try this at home.",
          "O.O",
          "let me introduce you to my best friend Google....",
          "You're number zero in my heart.",
          "I totally just called an Uber for you.",
          "Tinder is so last year.",
          "Don't you have a curfew?",
          "You might be the perfect spoon.",
          "Let's make some magic.",
          "RAWR",

          ].sample,

      mood: "lonely"
      )
    end
    10.times do
     Shoutout.create!(
      text: [

          "that's how we roll",
          "remember that time when.....",
          "We are family.",
          "music to my beers",
          "sharing is caring",
          "You're my treasure.",
          "Third time's a charm.",
          "Let's salsa.",
          "and we have a winner!",
          "Vote For Pedro",
          "you bettah WERK"

          ].sample,

      mood: "inspired"
      )
    end
    10.times do
     Shoutout.create!(
      text: [

        "Simply put, I'm in the business of making magic.",
        "that's the money",
        "5 6 7 8 !!",
        "grand slam!",
        "Have you heard about K-Pop?",
        "Be Yonce Say that again.",
        "don't judge",
        "there's room for all of us",
        "don't do anything I wouldn't do",
        "Here's to us!",
        "Let me take you down to Kokomo.",
        "50 shades of awesome."

        ].sample,

      mood: "dark"   
      )
    end
  puts "40 shoutouts have been created in the database."
end
end
