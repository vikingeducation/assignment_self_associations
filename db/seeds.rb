# 1:X employees
papa = Employee.find_or_create_by!(name: 'Papa Smurf')
Employee.find_or_create_by!(name: 'Hefty Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Vanity Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Smurfette', manager_id: papa.id)

gmel = Employee.find_or_create_by!(name: 'Gargamel')
Employee.find_or_create_by!(name: 'Azrael', manager_id: gmel.id)


# X:X users
zorro = User.find_or_create_by!(name: 'zorro')
noche = User.find_or_create_by!(name: 'noche')
alex = User.find_or_create_by!(name: 'alex')
violet = User.find_or_create_by!(name: 'violet')
henrietta = User.find_or_create_by!(name: 'henrietta')
manny = User.find_or_create_by!(name: 'manny')



Gifting.find_or_create_by(giver_id: zorro.id, recipient_id: noche.id)
Gifting.find_or_create_by(giver_id: zorro.id, recipient_id: manny.id)
Gifting.find_or_create_by(giver_id: zorro.id, recipient_id: violet.id)
Gifting.find_or_create_by(giver_id: zorro.id, recipient_id: alex.id)

Gifting.find_or_create_by(giver_id: noche.id, recipient_id: zorro.id)
Gifting.find_or_create_by(giver_id: alex.id, recipient_id: zorro.id)

Gifting.find_or_create_by(giver_id: alex.id, recipient_id: noche.id)
Gifting.find_or_create_by(giver_id: noche.id, recipient_id: henrietta.id)




Friending.find_or_create_by(friender_id: zorro.id, friend_id: noche.id)
Friending.find_or_create_by(friender_id: zorro.id, friend_id: manny.id)
Friending.find_or_create_by(friender_id: zorro.id, friend_id: violet.id)

Friending.find_or_create_by(friender_id: noche.id, friend_id: zorro.id)
Friending.find_or_create_by(friender_id: alex.id, friend_id: zorro.id)


Following.find_or_create_by(follower_id: zorro.id, followee_id: noche.id)
Following.find_or_create_by(follower_id: zorro.id, followee_id: manny.id)
Following.find_or_create_by(follower_id: zorro.id, followee_id: violet.id)
Following.find_or_create_by(follower_id: zorro.id, followee_id: alex.id)

Following.find_or_create_by(follower_id: noche.id, followee_id: zorro.id)
Following.find_or_create_by(follower_id: alex.id, followee_id: zorro.id)

Following.find_or_create_by(follower_id: alex.id, followee_id: noche.id)
Following.find_or_create_by(follower_id: noche.id, followee_id: henrietta.id)
