# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Employee.destroy
Department.destroy

sales = Department.create(name: "Sales", description:"Department of Sales")

erik = Employee.create(name: "Erik", email: "e@mail.com", password: "123456", department_id: 1)
maria = Employee.create(name: "Maria", email: "m@mail.com", password: "123456", department_id: 1)