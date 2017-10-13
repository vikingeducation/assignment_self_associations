Project: assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...


[Andrea A](https://github.com/andie5/assignment_self_associations)

## To Get Going 
- run `rake db:create`
- run `rake db:migrate`
- run `rake db:seed`

- run `rails s`
- In the browser run `localhost:3000`


The Viking Store e-commerce application for Viking Commerce Inc
from the [Viking Code School](http://vikingcodeschool.com)


Self-referencing relationship
Tube Station - has many destinations and many origins


## Tests
t = TubeStation.first
tl = TubeStation.last
ts = TubeStation.create(:name => "Oxford Circus", :accessibility => "Y", :no_of_exits => 2)
ts2 = TubeStation.create(:name => "North Greenwich", :accessibility => "Y", :no_of_exits => 3)
ts3 = TubeStation.create(:name => "North Greenwich", :accessibility => "Y", :no_of_exits => 3)


t.initiated_journeys
t.journeys_started
t.received_journeys
t.journeys_ended


t.journeys_started << ts
t.journeys_ended << ts2

t.journeys_ended.delete(ts2)
tl.journeys_started << t


When assigning attributes, you must pass a hash as an argument.
t.received_journeys.build(ts)

t.journeys_started_ids
tl.journeys_started << ts3


