task :create_images => :environment do
    10.times do
     Image.create!(
      text: [

        "https://unsplash.imgix.net/photo-1418479631014-8cbf89db3431?q=75&fm=jpg&s=478a9a2196033db7c0bf3c8ba3707f4d",
        "https://ununsplash.imgix.net/photo-1414502622871-b90b0bec7b1f?q=75&fm=jpg&s=204c6064e8198b2ba44f367adf8ec819",
        "https://unsplash.imgix.net/photo-1414438992182-69e404046f80?q=75&fm=jpg&s=009738f458a5234335b2e05677029b39",
        "https://ununsplash.imgix.net/uploads/1411115362846f0257a48/3f4eb74a?q=75&fm=jpg&s=15087518f9f4fccf7b7f6f1e73330099",
        "https://ununsplash.imgix.net/photo-1422479516648-9b1f0b6e8da8?q=75&fm=jpg&s=c5f2b3df2a4c71532b3b354b8766503c",
        "https://ununsplash.imgix.net/photo-1415302199888-384f752645d0?q=75&fm=jpg&s=823bdcc1b7ad955f5180efd352561016",
        "https://unsplash.imgix.net/photo-1414005987108-a6d06de8769f?q=75&fm=jpg&s=b37798a9dbd0c8884af2261b518970e3",
        "https://ununsplash.imgix.net/photo-1413912623716-e6c688db0383?q=75&fm=jpg&s=2777ec88322e8725978f0fa956735021",
        "https://ununsplash.imgix.net/photo-1413896235942-39c2eb7cd584?q=75&fm=jpg&s=82734c02c2c6a780dc31f24c54077dd6"

          ].sample,
      )
    end
  puts "8 images have been created in the database."
end