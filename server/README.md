2-18-2015 2:15pm

Iron Yard Assignment:
We were given an open-ended assignment to collaborate in either 4 or 5 person teams.  2 - 3 team members are from the Ruby on Rails class and 2 members are from the Front End Engineering Class.

The purpose of this assignment is to create end points that act as API "contracts" between front end and back end.  This is our first Iron Yard collab between the FEE and ROR classes.  We were instructed to use BOTH the rails framework AND a frontend framework that is based on Bower and Node.  Two server ports will be utilized to display the app to the end user.

After brainstorming, we decided to create a fun app called SIPSTER.

This app generates faux drink names and taglines.

UX:

User will press the drink icon to initiate interaction with the Sipster app.

View #2 will appear.

User will be asked a feelings-related question and will choose from one of 4 answers.  The answer will be related to a type of data ("mood") within an alpha table and a beta table.

A first_word is the first word of our fake drink name that we will generate.

A second_word is the second word of our fake drink name.

Based on the user input, the server will narrow down a list of alpha words, beta words, and shoutout (tagline) strings.  Then the server will generate a randomly selected first_word, second_word, and shoutout.

A shoutout is a comment that is in some way related to the fake 2-word drink that we have generated.

View #3 will appear.  This displays a fun drink picture along with a LIKE or HEART icon along with our 2-word fake drink name.  The shoutout will appear underneath the drink name.

The frontend designers will designate a good place to add a comment stream.

Users will be able to comment in general about their interaction with the Sipster app.  We hope to further customize this feature in the future.

6:45pm:
Rails controllers, models, migrations, and rake tasks for both first_words and second_words to populate starter data have been created.  We are using the faker gem to provide fake data.

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
          "Everybody Footloose!",
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
          "Have you heard about K-Pop?",
          "Be Yonce Say that again.",
          "that's how I roll",
          "remember that time when.....",
          "We are family.",
          "music to my beers",
          "sharing is caring",
          "You're my treasure.",
          "Third time's a charm.",
          "Let's salsa.",
          "and we have a winner!",
          "Vote For Pedro"

11:59pm:
We now have 4 rake tasks, 4 migrations, and some decent looking real words and phrases populating our Sipster database.  We also added a shoutouts controller and a comments controller, both of which include .json formatted responses.  Next we need to assess what our end points need to look like via full team consultation.