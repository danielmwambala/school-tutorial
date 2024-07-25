# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create a student
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.string "phone_number"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "address"
#     t.string "contact_number"
#     t.string "date_of_birth"
#     t.integer "grade"

student = Student.create(
    first_name: 'Daniel',
    last_name: 'Mwambala',
    email: 'danielmwambala@gmail.com',
    phone_number: '+254714575645',
    address: 'P.O. Box 2333 400, Voi Kenya',
    contact_number: '+254734543454',
    date_of_birth: '2021/02/15',
    grade: '1',
)