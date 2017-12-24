# 1:X employees
papa = Employee.find_or_create_by!(name: 'Papa Smurf')
Employee.find_or_create_by!(name: 'Hefty Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Vanity Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Smurfette', manager_id: papa.id)

gmel = Employee.find_or_create_by!(name: 'Gargamel')
Employee.find_or_create_by!(name: 'Azrael', manager_id: gmel.id)


# X:X users
anne = User.find_or_create_by!(name: 'anne')
mike = User.find_or_create_by!(name: 'mike')
priscilla = User.find_or_create_by!(name: 'priscilla')
customer = User.find_or_create_by!(name: 'customer')
joanne = User.find_or_create_by!(name: 'joanne')
andrew = User.find_or_create_by!(name: 'andrew')



Gifting.find_or_create_by(giver_id: anne.id, recipient_id: mike.id)
Gifting.find_or_create_by(giver_id: anne.id, recipient_id: andrew.id)
Gifting.find_or_create_by(giver_id: anne.id, recipient_id: customer.id)
Gifting.find_or_create_by(giver_id: anne.id, recipient_id: priscilla.id)

Gifting.find_or_create_by(giver_id: mike.id, recipient_id: anne.id)
Gifting.find_or_create_by(giver_id: priscilla.id, recipient_id: anne.id)

Gifting.find_or_create_by(giver_id: priscilla.id, recipient_id: mike.id)
Gifting.find_or_create_by(giver_id: mike.id, recipient_id: joanne.id)




Friending.find_or_create_by(friender_id: anne.id, friend_id: mike.id)
Friending.find_or_create_by(friender_id: anne.id, friend_id: andrew.id)
Friending.find_or_create_by(friender_id: anne.id, friend_id: customer.id)

Friending.find_or_create_by(friender_id: mike.id, friend_id: anne.id)
Friending.find_or_create_by(friender_id: priscilla.id, friend_id: anne.id)


# Following.find_or_create_by(follower_id: v.id, followee_id: h.id)
# Following.find_or_create_by(follower_id: v.id, followee_id: t.id)
# Following.find_or_create_by(follower_id: v.id, followee_id: r.id)
# Following.find_or_create_by(follower_id: v.id, followee_id: l.id)
