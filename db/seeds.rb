# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Nikola', email: 'nikola@email.com', password: '123')
User.create(username: 'Nik', email: 'nik@email.com', password: '111')
User.create(username: 'Bruno', email: 'b@email.com', password: '222')
User.create(username: 'Kat', email: 'kat@email.com', password: '333')



Post.create(pic_url: 'https://images.france.fr/zeaejvyq9bhj/4uWgLZlyd5FWsyKuyI6FWT/3c0d4287edb05e0382c40c96ffed72e2/Nice__Sergii_Figurnyi_-_AdobeStock.jpg?w=1120&h=490&q=70&fl=progressive&fit=fill', user_id: 1, text: 'Relax')
Post.create(pic_url: 'http://www.pharmatimes.com/__data/assets/image/0006/1315932/Screen_Shot_2019-11-07_at_11.28.42.png', user_id: 1, text: 'Love')
Post.create(pic_url: 'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6f/4c/01.jpg', user_id: 1, text: 'Home')

Post.create(pic_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPvWj1MKDM5hQPoQ8X9zzJdxgTPnwpLb6YWrfBk8eYEU2QvrlB&s', user_id: 2, text: 'Home')
Post.create(pic_url: 'https://cdn.cnn.com/cnnnext/dam/assets/180928121618-stadiums-red-star-belgrade-super-169.jpg', user_id: 2, text: 'Love')

Post.create(pic_url: 'https://www.hillspet.com/content/dam/cp-sites/hills/hills-pet/en_us/img/breeds/english-bulldog-running-in-park.jpg', user_id: 3, text: 'Me')
Post.create(pic_url: 'https://i.ytimg.com/vi/3hRGPLFwS3c/maxresdefault.jpg', user_id: 3, text: 'Tough life')
Post.create(pic_url: 'https://ak8.picdn.net/shutterstock/videos/15260668/thumb/1.jpg', user_id: 3, text: 'Work Work Work Love')

Post.create(pic_url: 'https://static.toiimg.com/thumb/msid-44945488,width-748,height-499,resizemode=4,imgsize-291921/Nice-in-pictures.jpg', user_id: 4, text: 'France')


