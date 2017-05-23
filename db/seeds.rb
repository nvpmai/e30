images = [
  'http://images.all-free-download.com/images/graphiclarge/canoe_water_nature_221611.jpg',
  'http://images.all-free-download.com/images/graphiclarge/beautiful_natural_scenery_05_hd_pictures_166228.jpg',
  'http://www.fullscreensavers.com/pics/nature02.jpg',
  'http://images.all-free-download.com/images/graphicthumb/tree_meadow_nature_220408.jpg',
  'https://image.freepik.com/free-vector/startup-background-design_1172-45.jpg',
  'https://innocom.vn/wp-content/uploads/2016/01/startup-khoinghiep-free-stuff.jpg',
  'https://image.freepik.com/free-vector/startup-gears_23-2147503512.jpg',
  'https://www.123freevectors.com/wp-content/uploads/vectorart/startup-concept-vector.jpg',
  'https://static.vecteezy.com/system/resources/previews/000/143/607/non_2x/free-linear-startup-icons-vector.jpg',
  'https://image.freepik.com/free-vector/funny-startup-illustration_23-2147504708.jpg',
  'http://pet-land.info/wp-content/uploads/2017/03/startup-presentation-powerpoint-template-free-startup-presentation-powerpoint-template-free-onotemplate-template.jpg',
  'https://assets.entrepreneur.com/content/16x9/822/20150924062046-livspace.jpeg'
]

10000.times do
  Article.create(
    title: Faker::Hacker.say_something_smart, 
    headline: Faker::Hacker.say_something_smart,
    featured_image: images.sample,
    content: Faker::Lorem.paragraphs(rand(15..30)))
end
