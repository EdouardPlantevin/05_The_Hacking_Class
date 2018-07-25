require 'faker'


10.times do
    course = Course.create(Faker::RickAndMorty.location, body: Faker::SouthPark.quote)
end

30.times do
    x = rand(1..10)
    u = Course.find(x)
    student = Student.create(name: Faker::RickAndMorty.character, course_id: u.id)
  end
