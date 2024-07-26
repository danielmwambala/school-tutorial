# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create a sindgle student record

# student = Student.create(
#     first_name: 'Daniel',
#     last_name: 'Mwambala',
#     email: 'danielmwambala@gmail.com',
#     phone_number: '+254714575645',
#     address: 'P.O. Box 2333 400, Voi Kenya',
#     contact_number: '+254734543454',
#     date_of_birth: '2021/02/15',
#     grade: '1',
# )


# creating multiple records at once
10.times do |i|
    Student.create(
    first_name: "Student#{i+1}",
    last_name: "Last name#{i+1}",
    email: "student#{i+1}@example.com",
    phone_number: '+254714575645',
    address: 'P.O. Box 2333 400, Voi Kenya',
    contact_number: "+25471234567#{i+1}",
    date_of_birth: '2021/02/15',
    grade: i+1,
)
end