# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({ name: 'Regular', description: Faker::Marketing.buzzwords })
r2 = Role.create({ name: 'Seller', description: Faker::Marketing.buzzwords })
r3 = Role.create({ name: 'Admin', description: Faker::Marketing.buzzwords })

u1 = User.create({ name: Faker::Name.name, email: Faker::Internet.email, password: '12345678', password_confirmation: '12345678', role_id: r1.id })
u2 = User.create({ name: Faker::Name.name, email: Faker::Internet.email, password: '12345678', password_confirmation: '12345678', role_id: r2.id })
u3 = User.create({ name: Faker::Name.name, email: Faker::Internet.email, password: '12345678', password_confirmation: '12345678', role_id: r2.id })
u4 = User.create({ name: Faker::Name.name, email: 'abr@example.com', password: '12345678', password_confirmation: '12345678', role_id: r3.id })

i1 = Campaign.create({ title: Faker::Company.bs, purpose: Faker::Marketing.buzzwords, estimated_duration: 1, user_id: u2.id })
i2 = Campaign.create({ title: Faker::Company.bs, purpose: Faker::Marketing.buzzwords, estimated_duration: 2, user_id: u2.id })
i3 = Campaign.create({ title: Faker::Company.bs, purpose: Faker::Marketing.buzzwords, estimated_duration: 0, user_id: u3.id })
i4 = Campaign.create({ title: Faker::Company.bs, purpose: Faker::Marketing.buzzwords, estimated_duration: 1, user_id: u3.id })