assignment_self_associations
============================

This is the self-reflective association. This is the self-reflective association. This is the self-reflective association. This is the self-reflective association...

by [Michael Alexander](https://www.github.com/betweenparentheses)

This self-association project uses Rails self-reflective relationships to model the often-cruel natural world, famously described as “red in tooth and claw.”

VEGETARIANS BEWARE
==================

Animals eat other living beings. Some of those beings are animals. Some eat other animals (cats eat mice. wolves eat sheep). Some eat their own kind (praying mantises!). Some eat plants (not modeled here, because that would be too peaceful). Chimps eat grubs and insects! Insects eat other insects! Many people eat animals, and a few people eat other people(ick!).

This is all very confusing until you realize that this is a perfect example of a many-to-many, self-reflective relationship.

#The class here is an Animal.
##An Animal has a devourer-devouree relationship with other Animals, captured in the Devourments table.
##Plants will not be modeled here.
##The devourer has eaten the devouree.
##a devouree has been devoured_by a devourer
###since animals can be large, the same animal can be eaten by multiple animals. This is a true many-to-many.
##An animal can have a kind, expressed in varchar form [:bug, :predator, :scavenger, :domesticated_attack_kitty]
##It also has a randomly generated string name: “Earl McSwiggins"

IMAGINARY TODO: add animal-eating data tree traversal functionality


If you want to play around with this, run this in Rails Console:

Devourment.all do |d|
  puts "#{d.devourer.name} the #{d.devourer.kind} ferociously consumed #{d.devouree.name} the #{d.devouree.kind}!!!"
end



