# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#type_list = [
 # ['FMD'],
 # ['ND'],
  #['MCI'],
  #['HC']
#]

#type_list.each do |type|
 # Dementia.create( type: type)
#end

patient_list = [
  ['Dave', 'FMD'],
  ['Penny', 'ND'],
  ['Annie', 'FMD'],
  ['Harry', 'FMD'],
  ['Liam', 'FMD'],
  ['Jake', 'ND'],
  ['Mimi', 'MCI'],
  ['Daisy', 'MCI'],
  ['Louise', 'HC'],
  ['Simon', 'HC'],
  ['Lori', 'ND'],
  ['Luke', 'FMD']
]

patient_list.each do |name, type|
  Patient.create(name: name, dementia: type)
end
