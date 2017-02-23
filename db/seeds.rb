madz = Contact.create(email: 'mflorenosos@example.com', full_name: 'Madz Florenosos')
jayson = Contact.create(email: 'jmahistrado@example.com', full_name: 'Jayson Mahistrado')

madz.update_attributes(gender:'f')
jayson.update_attributes(gender:'m')

bike = Interest.find_or_create_by(name: 'Bike')
run = Interest.find_or_create_by(name: 'Run')
swim = Interest.find_or_create_by(name: 'Swim')

madz.interests << [run,bike,swim]

jayson.interests << [run,bike,swim]
