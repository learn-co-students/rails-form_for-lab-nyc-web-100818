# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s = Student.new
s.first_name = "Chetty"
s.last_name = "Ty"
s.save

sc = SchoolClass.new
sc.title = "Making Stuff 101"
sc.room_number = 404
sc.save
