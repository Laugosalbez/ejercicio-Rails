# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
location_1 = Location.create name: 'Home', city: 'Barcelona'
location_2 = Location.create name: 'Beach'
location_3 = Location.create name: 'Hotel', city: 'Madrid'
location_4 = Location.create name: 'Boyfriend', city: 'Alcala'
location_5 = Location.create name: 'Gym', city: 'Barrio'
location_6 = Location.create name: 'Brother', city: 'Helsinki'

Visit.create location_id: location_1.id, user_name:"Laura", from_date:"29-11-14", to_date:"29-11-14" 
Visit.create location_id: location_2.id, user_name:"Christian", from_date:"03-05-12", to_date:"27-06-12" 
Visit.create location_id: location_3.id, user_name:"Ana", from_date:"28-12-13", to_date:"09-03-14" 
Visit.create location_id: location_4.id, user_name:"Pedro", from_date:"06-07-11", to_date:"07-07-11" 
Visit.create location_id: location_5.id, user_name:"Cristina", from_date:"24-06-14", to_date:"24-06-14" 
Visit.create location_id: location_6.id, user_name:"Ingacio", from_date:"20-07-14", to_date:"22-07-14" 
