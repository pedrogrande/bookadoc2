# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(user_type: 'doctor', email: 'doctor1@test.com', password: '12345678')
DoctorProfile.create(user_id: user1.id, title: 'Dr', first_name: 'Johnny', last_name: 'Smith')
user2 = User.create(user_type: 'doctor', email: 'doctor2@test.com', password: '12345678')
DoctorProfile.create(user_id: user2.id, title: 'Dr', first_name: 'Anne', last_name: 'Jones')
user3 = User.create(user_type: 'doctor', email: 'doctor3@test.com', password: '12345678')
DoctorProfile.create(user_id: user3.id, title: 'Dr', first_name: 'Amy', last_name: 'Smithers')
user4 = User.create(user_type: 'doctor', email: 'doctor4@test.com', password: '12345678')
DoctorProfile.create(user_id: user4.id, title: 'Dr', first_name: 'Agnes', last_name: 'Smitherine')
