
seed_file = File.join(Rails.root, 'db', 'seed.yml')
config = YAML::load_file(seed_file)
Article.create(config["articles"])
User::HABTM_Articles.create(config["articles_users"])
Event.create(config["events"])

 Album.create(title: 'Helloween', description: 'Funny Helloween celebration!', user_id: 1)
 Album.create(title: 'New Year', description: 'Funny New Year celebration!' , user_id: 2)
 Picture.create(title: 'pic2', description: 'good picture', image:'hel.jpg', album_id: 1)
 Picture.create(title: 'pic3', description: 'nice picture', image:'jir.jpg', album_id: 2)
 Album.create(title: 'Easter', description: 'Easter celebration with our teachers and students!', user_id: 2)
 Picture.create(title: 'pic4', description: 'taken on sunday morning', image:'eggs.jpg', album_id: 3)
