
roles = ["Regular","Seller","Admin"]
roles.each do |role|
  Role.create({ name: role, description: Faker::Marketing.buzzwords })
end


User.create({ name: Faker::Name.name, email: 'abr@example.com', password: '12345678', password_confirmation: '12345678', role_id: 2 })
(0..8).each do
  u1 = User.create({ name: Faker::Name.name, email: Faker::Internet.email, password: '12345678', password_confirmation: '12345678', role_id: Role.all.pluck(:id).sample })
end

(0..8).each do
  Campaign.create({ title: Faker::Company.bs, purpose: Faker::Marketing.buzzwords, estimated_duration: rand(0..2), user_id: User.all.pluck(:id).sample })
end

tags = ["Recipe","Travel","Fashion/Beauty","Humour"]
tags.each do |tag_name|
  Tag.create(name: tag_name)
end