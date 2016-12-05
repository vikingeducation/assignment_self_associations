
def generate_tennants(n)
  n.times { Tennant.create(name: Faker::Name.name) }
end

def generate_tennants_neighbors(n)
  count = 0
  while count < n
    rn_1 = Faker::Number.between(Tennant.first.id, Tennant.last.id)
    rn_2 = Faker::Number.between(Tennant.first.id, Tennant.last.id)
    unless rn_1 == rn_2
      TennantsNeighbor.create(resident: Tennant.find(rn_1),
                              neighbor: Tennant.find(rn_2))
      count += 1
    end
  end
end

generate_tennants(25)

generate_tennants_neighbors(25)
