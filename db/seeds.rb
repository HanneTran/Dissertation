
User.where(email: 'admin@admin.com').first_or_create(password:'password', password_confirmation: 'password')


# string :type, text :description
type_list = [
  ['FMD','Functional Memory Disorder'],
  ['ND', 'Neurodegenerative Disorder'],
  ['MCI', 'Mild Cognitive Impairment'],
  ['HC', 'Healthy Controls']
]

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


#note text :note, bigint :patient_id
note_list = [
  #['patient0 notes', 0],
  ['patient1 notes', 1],
  ['patient2 notes', 2],
  ['patient3 notes', 3],
  ['patient4 notes', 4],
  ['patient5 notes', 5]
]

# bigint :patient_id
# int :pause
# int :duration
# int :no_of_topics_changed
# int :empty_words
# int :variety_of_words

feature_list = [
  #[0, 0.2024, 0.5929, 0.2941, 0.6471, 2.5294 ], #3
  [1, 0.443, 0.6326, 0.2609, 0.6957, 3.0435], #5
  [2, 0.0395, 0.3954, 0.3, 0.1, 1.15], #9
  [3, 0.1114, 0.4796, 0.4286, 0.2143, 2.5], #11
  [4, 1.2771, 0.675, 0.4286, 2.7143, 14.7143], #53
  #[5, 1.7257, 0.73, 0.7143, 0.4286, 1.7143] ,#40
  #[6, 0.8083, 0.6297, 0.8333, 3,9.6667], #49
  #[7, 9.245, 0.4944, 1, 58.5,200], #60

  #[8, 3.6738, 0.6606, 0.0472, 0.5,3.6038], #24
  #[9, 0.4619 , 0.8274, 0.1429, 0.5, 1.2381], #15
  #[10, 0.5331, 0.4061, 0.2308, 0.3077, 4.2308] #14
]

file_list = [[null, 'v1.mp4', 1, 1],
  [null, 'v1.mp4', 1, 2],
  [null, 'v1.mp4', 1, 3],
  [null, 'v1.mp4', 1, 4],
  [null, 'v1.mp4', 1, 5],
  [null, 'v1.mp4', 1, 6],
  [null, 'v1.mp4', 1, 7],
  [null, 'v1.mp4', 1, 8],
  [null, 'v1.mp4', 1, 9],
  [null, 'v1.mp4', 1, 10],
  [null, 'v1.mp4', 1, 11],
  [null, 'v1.mp4', 1, 12],
  [null, 'v2.mp4', 2, 1],
  [null, 'v2.mp4', 2,2],
  [null, 'v2.mp4', 2,3],
  [null, 'v2.mp4', 2,4],
  [null, 'v2.mp4', 2,5],
  [null, 'v2.mp4', 2,6],
  [null, 'v2.mp4', 2,7],
  [null, 'v2.mp4', 2,8],
  [null, 'v2.mp4', 2,9], 
  [null, 'v2.mp4', 2,10],
  [null, 'v2.mp4', 2,11],
  [null, 'v2.mp4', 2,12],
  [null, 'v3.mp4', 3, 1],
  [null, 'v3.mp4', 3, 2],
  [null, 'v3.mp4', 3, 3],
  [null, 'v3.mp4', 3, 4],
  [null, 'v3.mp4', 3, 5],
  [null, 'v3.mp4', 3, 6],
  [null, 'v3.mp4', 3, 7],
  [null, 'v3.mp4', 3, 8],
  [null, 'v3.mp4', 3, 9],
  [null, 'v3.mp4', 3, 10],
  [null, 'v3.mp4', 3, 11],
  [null, 'v3.mp4', 3, 12],
  [null, 'v1.mp4', 4, 2],
  [null, 'v1.mp4', 4, 3],
  [null, 'v1.mp4', 4, 4],
  [null, 'v1.mp4', 4, 5],
  [null, 'v1.mp4', 4, 6],
  [null, 'v1.mp4', 4, 7],
  [null, 'v1.mp4', 4, 8],
  [null, 'v1.mp4', 4, 9],
  [null, 'v1.mp4', 4, 10],
  [null, 'v1.mp4', 4, 11],
  [null, 'v1.mp4', 4, 12]
  ]

patient_list = [[null, 'Dave', Datetime.now, Datetime.now, 'FMD',1],
  [null, 'Penny', Datetime.now, Datetime.now, 'FMD',1],
  [null, 'Mollie', Datetime.now, Datetime.now, 'ND',2],
  [null, 'Daniel', Datetime.now, Datetime.now, 'HC',4],
  [null, 'Mark', Datetime.now, Datetime.now, 'MCI',3]

]


type_list.each do |cat, des|
  Category.create(category: cat, description: des)
end

question_list.each do |id, des|
  Question.create(id: id, description: des)
end

patient_list.each do | id, name, cat, catid|
  Patient.create(id: id, name: name, category_type: cat, category_id: catid)
end

file_list.each do | id, file, patid, qid|
  Q.create(id: id, file: file, patient_id: patit, question_id: qid)
end

note_list.each do |id, note, patid|
  Nore.create(id: nil, note: note, patient_id: patid)
end 


feature_list.each do |patid, pause, dur, no, emp, var|
  Feature.create(id: nil, patient_id: patid, pause: pause, duration: dur, no_of_topics_changed: no, empty_words: emp, variety_of_words: var)
end
