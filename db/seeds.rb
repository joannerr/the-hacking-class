require 'faker'

# - ALIMENTER BDD STUDENTS -
10.times do
	student = Student.create(first_name: Faker::OnePiece.island, last_name: Faker::Dog.name)
end

# - ALIMENTER BDD COURSES -
3.times do
	course = Course.create(subject: Faker::GreekPhilosophers.name)
end

# - REMPLIR COLONNE COURSE_ID -
10.times do |i|
	Student.find(i+1).update(course_id: rand(1..3))
end
