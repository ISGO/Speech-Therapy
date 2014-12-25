# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
therapist = SpeechTherapist.create([{id:1, firstName:'Rahel', lastName:'Darmon', password:'1', mail:'rahel@gmail.com'}])
patients = Patient.create([{id:11, firstName:'patient1', lastName:'patient1', password:'1', mail:'patient1@gmail.com', hmo:'clalit', therapist_id:1}])