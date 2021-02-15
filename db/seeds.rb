10.times do
  user = User.create! name: Faker::Name.name, email: Faker::Internet.email, password: 'password'
  course = Course.create! title: Faker::Book.title, price: Faker::Number.decimal(l_digits: 2)
  Payment.create! user: user, course: course
end
