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

# string :name, string :type, bigint :type_id
patient_list = [
  ['Dave', 0],  #FMD should subtitute with type_id?
  ['Penny', 1],
  ['Annie', 0],
  #['Harry', 'FMD'],
  #['Liam', 'FMD'],
  #['Jake', 'ND'],
  ['Mimi', 2],
  #['Daisy', 'MCI'],
  ['Louise', 3]
  #['Simon', 'HC'],
  #['Lori', 'ND'],
  #['Luke', 'FMD']
]

# string :type, text :description
type_list = [
  ['FMD','Functional Memory Disorder'],
  ['ND', 'Neurodegenerative Disorder'],
  ['MCI', 'Mild Cognitive Impairment'],
  ['HC', 'Healthy Controls']
]

# int :question_no, text :description, bigint :patient_id
question_list = [
  [1,'Why have you come today and what are your expectation?'],
  [2,'Tell me what problems you have noticed with your memory recently.'],
  [3,'Who are most worried about your memory? You or somebody else?'],
  [4,'What did you do over the last weekend? Given as much details as you can.'],
  [5,'What has been in the news recently?'],
  [6,'Tell me about the school you went to and when you left.'],
  [7,'Tell me what you did when you left school, what jobs did you do?'],
  [8,'Tell me about your last job. Given much details as you can.'],
  [9,'Who manages your finances, you or somebody else? Has it change recently?'],
  [10,'Please name as many animals as you can. You can name any type of animal.
     You have 1 minute. Please start after you hear the buzzer.'],
  [11,'Please name as many words as you can that begin with the letter p.
     It can be any any word beginning with letter p except names of people
     such as Peeta, or name of country such as Portugal.
     Please start answering after you hear the buzzer.'],
  [12,'Please describe this picture in as much details as you can. When you finish press forward.']

]

#n text :note, bigint :patient_id
note_list = [
  ['patient0 notes',0],
  ['patient1 notes',1],
  ['patient2 notes',2],
  ['patient3 notes',3],
  ['patient4 notes',4],
  ['patient5 notes',5]
]

# bigint :patient_id
# int :pause
# int :duration
# int :no_of_topics_changed
# int :empty_words
# int :variety_of_words
feature_list = [
  [0, 0.2024, 0.5929, 0.2941, 0.6471, 2.5294 ], #3
  [1, 0.443, 0.6326, 0.2609, 0.6957, 3.0435], #5
  [2, 0.0395, 0.3954, 0.3, 0.1, 1.15], #9
  [3, 0.1114, 0.4796, 0.4286, 0.2143, 2.5], #11
  [4, 1.2771, 0.675, 0.4286, 2.7143, 14.7143] #53
]

#atient_list.each do |name, type|
#Patient.create(name: name, dementia: type)
#end
