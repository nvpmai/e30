images = [
  'http://images.all-free-download.com/images/graphiclarge/canoe_water_nature_221611.jpg',
  'http://images.all-free-download.com/images/graphiclarge/beautiful_natural_scenery_05_hd_pictures_166228.jpg',
  'http://www.fullscreensavers.com/pics/nature02.jpg',
  'http://images.all-free-download.com/images/graphicthumb/tree_meadow_nature_220408.jpg'
]

10.times do
  Article.create(
    title: Faker::Hacker.say_something_smart, 
    headline: Faker::Hacker.say_something_smart,
    featured_image: images.sample,
    content: Faker::Lorem.paragraphs(rand(5..10)))
end
