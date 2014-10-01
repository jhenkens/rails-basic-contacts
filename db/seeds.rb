# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
for i in 1..1000
  Contact.create(first_name: 'Johan', last_name: "Henkens#{i}", company: 'Helloworld, Inc.', data: 'This could be some JSON struct so that you can have any type of contact data you want. Or if it is more simple, you can just have strictly defined fields')
end
