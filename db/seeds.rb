# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({ name: 'Regular', description: 'Can read items' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r1.id })
u2 = User.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
u3 = User.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
u4 = User.create({ name: 'Jack', email: 'jack@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r3.id })


i1 = Campaign.create({ title: 'Rayban Sunglasses', purpose: 'Stylish shades', estimated_duration: 99.99, user_id: u2.id })
i2 = Campaign.create({ title: 'Gucci watch', purpose: 'Expensive timepiece', estimated_duration: 199.99, user_id: u2.id })
i3 = Campaign.create({ title: 'Henri Lloyd Pullover', purpose: 'Classy knitwear', estimated_duration: 299.99, user_id: u3.id })
i4 = Campaign.create({ title: 'Porsche socks', purpose: 'Cosy footwear', estimated_duration: 399.99, user_id: u3.id })