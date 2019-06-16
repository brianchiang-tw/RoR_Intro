people = [
    { name: "Person 1", :age => 21 },
    { name: "Person 2", :age => 15 },
    { name: "Person 3", :age => 13 },
    { name: "Person 4", :age => 30 },
    { name: "Person 5", :age => 45 },
  ]

  name_of_people_older_than_20 = people.select{ |p| ( p[:age]>20 ) }.map{ |p| (p[:name] ) }

#   ["Person 1", "Person 4", "Person 5"]
  puts name_of_people_older_than_20.inspect