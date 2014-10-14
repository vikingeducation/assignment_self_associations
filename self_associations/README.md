#Active Record Self Associations
================================

Part of **Viking Code School**

Description: This project is a miniature exercise to test knowledge of model self associations.  In my example, I have simply a User model and a Voting join model.  

Just as expected, any user can "vote" on any other user and any user can "be voted on" by any other user.

The output below sample output for all expected associations.




Sample output:

# simple reflection methods
> actor.actors_actioned_by
> actor.actioned_actors
> actor.initiated_actions
> actor.actions_received

> u=User.find(312)
  User Load (0.3ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 312]]
 => #<User id: 312, name: "Lenore Bins", created_at: "2014-10-14 21:33:03", updated_at: "2014-10-14 21:33:03"> 
> u2 = User.find(182)
  User Load (0.2ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 182]]
 => #<User id: 182, name: "Mafalda Pagac", created_at: "2014-10-14 21:33:03", updated_at: "2014-10-14 21:33:03"> 


> u.cast_votes
  Voting Load (0.4ms)  SELECT "votings".* FROM "votings"  WHERE "votings"."voter_id" = ?  [["voter_id", 312]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Voting id: 368, voter_id: 312, recipient_id: "71", integer: nil, created_at: "2014-10-14 21:39:10", updated_at: "2014-10-14 21:39:10">]> 

> u.voted_on_users
  User Load (0.3ms)  SELECT "users".* FROM "users" INNER JOIN "votings" ON "users"."id" = "votings"."recipient_id" WHERE "votings"."voter_id" = ?  [["voter_id", 312]]
 => #<ActiveRecord::Associations::CollectionProxy [#<User id: 71, name: "Manley Farrell", created_at: "2014-10-14 21:33:02", updated_at: "2014-10-14 21:33:02">]> 

> u.received_votes
  Voting Load (0.7ms)  SELECT "votings".* FROM "votings"  WHERE "votings"."recipient_id" = ?  [["recipient_id", 312]]
 => #<ActiveRecord::Associations::CollectionProxy []> 

> u.voted_by_users
  User Load (0.6ms)  SELECT "users".* FROM "users" INNER JOIN "votings" ON "users"."id" = "votings"."voter_id" WHERE "votings"."recipient_id" = ?  [["recipient_id", 312]]
 => #<ActiveRecord::Associations::CollectionProxy []> 




###
# adding to, deleting from the association
1)> actor.actors_actioned_by << random_actor
2)> actor.actioned_actors << random_other_actor
3)> actor.initiated_actions.build(using random_actor's ID)
4)> actor.actioned_actors.delete(random_other_actor)
5)> actor.actioned_actors = [1,2,3,4]     # ids
6)> some_other_actor.actors_actioned_by << actor



1) > u.voted_by_users << User.find(13)
  User Load (0.3ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 13]]
   (0.2ms)  begin transaction
  Voting Exists (0.3ms)  SELECT  1 AS one FROM "votings"  WHERE ("votings"."voter_id" = 13 AND "votings"."recipient_id" = 312) LIMIT 1
  SQL (0.6ms)  INSERT INTO "votings" ("created_at", "recipient_id", "updated_at", "voter_id") VALUES (?, ?, ?, ?)  [["created_at", "2014-10-14 21:45:30.171626"], ["recipient_id", 312], ["updated_at", "2014-10-14 21:45:30.171626"], ["voter_id", 13]]
   (1.8ms)  commit transaction
 => #<ActiveRecord::Associations::CollectionProxy [#<User id: 13, name: "Quinn Hauck", created_at: "2014-10-14 21:33:02", updated_at: "2014-10-14 21:33:02">]> 

2) > u.voted_on_users << User.find(8)
  User Load (0.2ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 8]]
   (0.1ms)  begin transaction
  Voting Exists (0.3ms)  SELECT  1 AS one FROM "votings"  WHERE ("votings"."voter_id" = 312 AND "votings"."recipient_id" = 8) LIMIT 1
  SQL (0.3ms)  INSERT INTO "votings" ("created_at", "recipient_id", "updated_at", "voter_id") VALUES (?, ?, ?, ?)  [["created_at", "2014-10-14 21:46:04.385641"], ["recipient_id", 8], ["updated_at", "2014-10-14 21:46:04.385641"], ["voter_id", 312]]
   (2.1ms)  commit transaction
 => #<ActiveRecord::Associations::CollectionProxy [#<User id: 71, name: "Manley Farrell", created_at: "2014-10-14 21:33:02", updated_at: "2014-10-14 21:33:02">, #<User id: 8, name: "Gunner King", created_at: "2014-10-14 21:33:02", updated_at: "2014-10-14 21:33:02">]> 


3) u.cast_votes.build(voter_id: u.id, recipient_id: 336).save
   (0.1ms)  begin transaction
  Voting Exists (0.4ms)  SELECT  1 AS one FROM "votings"  WHERE ("votings"."voter_id" = 312 AND "votings"."recipient_id" = 336) LIMIT 1
  SQL (0.3ms)  INSERT INTO "votings" ("created_at", "recipient_id", "updated_at", "voter_id") VALUES (?, ?, ?, ?)  [["created_at", "2014-10-14 21:47:34.416854"], ["recipient_id", 336], ["updated_at", "2014-10-14 21:47:34.416854"], ["voter_id", 312]]
   (1.6ms)  commit transaction
 => true 


4)u.voted_on_users.delete(User.find(100))
  User Load (0.2ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 100]]
   (0.2ms)  begin transaction
  SQL (0.4ms)  DELETE FROM "votings" WHERE "votings"."voter_id" = ? AND "votings"."recipient_id" = 100  [["voter_id", 312]]
  User Load (0.1ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 71]]
  User Load (0.1ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 336]]
  User Load (0.1ms)  SELECT  "users".* FROM "users"  WHERE "users"."id" = ? LIMIT 1  [["id", 336]]
   (0.1ms)  commit transaction
 => [#<User id: 100, name: "Assunta Parisian", created_at: "2014-10-14 21:33:02", updated_at: "2014-10-14 21:33:02">] 

 5)

 6) u2.voted_on_users << u
   (0.1ms)  begin transaction
  Voting Exists (0.4ms)  SELECT  1 AS one FROM "votings"  WHERE ("votings"."voter_id" = 182 AND "votings"."recipient_id" = 312) LIMIT 1
  SQL (0.4ms)  INSERT INTO "votings" ("created_at", "recipient_id", "updated_at", "voter_id") VALUES (?, ?, ?, ?)  [["created_at", "2014-10-14 21:49:29.382519"], ["recipient_id", 312], ["updated_at", "2014-10-14 21:49:29.382519"], ["voter_id", 182]]
   (2.3ms)  commit transaction
  User Load (0.3ms)  SELECT "users".* FROM "users" INNER JOIN "votings" ON "users"."id" = "votings"."recipient_id" WHERE "votings"."voter_id" = ?  [["voter_id", 182]]
 => #<ActiveRecord::Associations::CollectionProxy [#<User id: 173, name: "Margarita Mraz", created_at: "2014-10-14 21:33:03", updated_at: "2014-10-14 21:33:03">, #<User id: 376, name: "Raegan Daniel", created_at: "2014-10-14 21:33:04", updated_at: "2014-10-14 21:33:04">, #<User id: 312, name: "Lenore Bins", created_at: "2014-10-14 21:33:03", updated_at: "2014-10-14 21:33:03">]> 
 