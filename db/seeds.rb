# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# - ALIMENTER BDD STUDENTS -
# 10.times do
# 	student = Student.create(first_name: Faker::OnePiece.island, last_name: Faker::Dog.name)
# end

# - ALIMENTER BDD COURSES -
# 3.times do
	# course = Course.create(subject: Faker::GreekPhilosophers.name)
# end

# - REMPLIR COLONNE COURSE_ID -
10.times do |i|
	Student.find(i+1).update(course_id: rand(1..3))
end