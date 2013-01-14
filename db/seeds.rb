# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Department.create(name: "TKE-1")
Department.create(name: "TKE-2")
Department.create(name: "TKM")
Department.create(name: "TKO")

Project.create(name: "Urlop", number: "0000")
Project.create(name: "Choroba", number: "0000")
Project.create(name: "Szkolenie", number: "0000")
Project.create(name: "Inne", number: "0000")
