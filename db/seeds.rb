# 1:X employees
papa = Employee.find_or_create_by!(name: 'Papa Smurf')
Employee.find_or_create_by!(name: 'Hefty Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Vanity Smurf', manager_id: papa.id)
Employee.find_or_create_by!(name: 'Smurfette', manager_id: papa.id)

gmel = Employee.find_or_create_by!(name: 'Gargamel')
Employee.find_or_create_by!(name: 'Azrael', manager_id: gmel.id)

# X:X users
v = User.find_or_create_by!(name: 'violet')
h = User.find_or_create_by!(name: 'henrietta')
t = User.find_or_create_by!(name: 'thor')
l = User.find_or_create_by!(name: 'loki')
a = User.find_or_create_by!(name: 'alex')

Following.find_or_create_by(follower_id: v.id, followee_id: h.id)
Following.find_or_create_by(follower_id: v.id, followee_id: t.id)
Following.find_or_create_by(follower_id: v.id, followee_id: r.id)
Following.find_or_create_by(follower_id: v.id, followee_id: w.id)


Gifting.find_or_create_by(giver_id: v.id, recipient_id: h.id)
Gifting.find_or_create_by(giver_id: v.id, recipient_id: t.id)
Gifting.find_or_create_by(giver_id: t.id, recipient_id: l.id)
Gifting.find_or_create_by(giver_id: v.id, recipient_id: a.id)
Gifting.find_or_create_by(giver_id: t.id, recipient_id: a.id)
Gifting.find_or_create_by(giver_id: h.id, recipient_id: a.id)

