craig = Contact.find_or_create_by(email: 'calexander@example.com', full_name: 'Craig Alexander')
mirinda = Contact.find_or_create_by(email: 'mcarfrae@example.com', full_name: 'Mirinda Carfrae')

craig.update_attributes(gender: 'm')
mirinda.update_attributes(gender: 'f')

swim = Interest.find_or_create_by(name: 'Swim')
bike = Interest.find_or_create_by(name: 'Bike')
run = Interest.find_or_create_by(name: 'Run')

craig.interests << [swim, bike, run]
mirinda.interests << [swim, bike, run]
