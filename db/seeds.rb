10.times do |n|
  name  = Faker::Name.name
  email = "user-#{n + 1}@google.com"
  password = "password"
  avatar = Faker::Avatar.image
  User.create!(name:  name,
               email: email,
               avatar: avatar,
               password: password,
               password_confirmation: password)
end

Maker.create!(name: "LG")
Maker.create!(name: "Apple")
Maker.create!(name: "Samsung")
Maker.create!(name: "Xiaomi")
Maker.create!(name: "HTC")
Maker.create!(name: "Sony")
Maker.create!(name: "Huawei")

maker = Maker.find(1)
maker.products.create!(name: "LG V30+ LGH930DS Aurora Black", category: "LG V")
maker = Maker.find(2)
maker.products.create!(name: "Iphone 6 32G", category: "Iphone")
maker = Maker.find(3)
maker.products.create!(name: "Samsung Galaxy S9", category: "Galaxy")

users = User.order(:created_at).take(6)
3.times do
  title = Faker::Lorem.sentence(1)
  banner = "http://dienthoaidailoangiare.com/wp-content/uploads/2016/04/smartphone-banner_updated-1.jpg"
  content = Faker::Lorem.paragraph
  users.each {|user| user.reviews.create!(title: title, banner: banner, content: content)}
end
