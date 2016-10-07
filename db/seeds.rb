# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "admin", password: "abc123")
Contact.create(name: "Keith", email: "keithchongwy@gmail.com", phone: "0420 325 425", msg: "please inform me your thoughts and what you need changed.")
