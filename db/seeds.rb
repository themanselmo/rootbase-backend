# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("Seeding organizations...")
thc = Organization.create(name: "The High Council Farms", password: "1", password_confirmation: "1")


puts("Seeding employees...")
# max = Employee.create(name: "Max Anselmo", pin: "1234", organization_id: thc.id)
# adam = Employee.create(name: "Adam La Rosa", pin: "1234", organization_id: thc.id)
# richie = Employee.create(name: "Richie DeDonato", pin: "1234", organization_id: thc.id)

puts("Seeding gardens...")
r1 = Garden.create(name: "Veg 1", crop: "Beef Steak Tomato", organization_id: thc.id)
r2 = Garden.create(name: "Veg 2", crop: "Plum Tomato", organization_id: thc.id)
r3 = Garden.create(name: "Flower 1", crop: "Hydrangea", organization_id: thc.id)

puts("Seeding tasks...")
t1 = Task.create(name: "Wash floors", status: "incomplete", due_date: "2021/12/01", organization_id: thc.id)
t2 = Task.create(name: "Foliar Spray Canopy", status: "incomplete", due_date: "2021/12/01", organization_id: thc.id)
t3 = Task.create(name: "Mix up stock tanks", status: "incomplete", due_date: "2021/12/01", organization_id: thc.id)


puts("Seeding employee tasks...")

puts("Seeding garden tasks...")
