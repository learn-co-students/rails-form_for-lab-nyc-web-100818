# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sc_1 = SchoolClass.create(title: "Software Engineering", room_number: 4)
sc_2 = SchoolClass.create(title: "Art", room_number: 3)

s1 = Student.create(first_name: "Ali", last_name: "Reubenstone")
s2 = Student.create(first_name: "Aaron", last_name: "Weiner")
