#  Practicing with Self Associations

In this quick sprint assignment I built a bare bones Rails app to play with self-reflective associations from the console.

Twitter style social website/ Structure of associations:

People aka followers, followed_by, following

Table -> Person - who can be follower
Table -> Person - here the same guy can be followed
JoinTable -> followings

Class Person

has_many :accepted_followings, :foreign_key => :follower_id,:class_name => "Followings"
has_many :followers, :through => "Followings", :source => :sender_id

has_many :send_followings, :foreign_key => :celeb_id, :class_name => "Followings"
has_many :celebs, :through => "Followings", :source => :acceptor_id

Class Followings

belongs_to :acceptor_followings, :class_name => "Person", :foreign_key => :acceptor_id

belongs_to :sender_followings, :class_name => "Person", :foreign_key => sender_id


## Getting Started

If you want to quick run some the examples to see the code in action, and you have installed Ruby and Rails, run
```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails console
> Person.first.send_followings
etc.....
```

the page will be available in the browser at localhost:3000

## Authors

* **Dariusz Biskupski** - *Initial work* - https://dariuszbiskupski.com


## Acknowledgments

It is the assignment created for [Viking Code School](https://www.vikingcodeschool.com/)
