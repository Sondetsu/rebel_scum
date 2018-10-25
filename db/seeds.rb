# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Assignment.destroy_all
Planet.destroy_all
Soldier.destroy_all
Squadron.destroy_all

9.times do
    squadron = Squadron.create(name: Faker::StarWars.unique.call_squadron)

    12.times do
        squadron.soldiers.create(name: Faker::FunnyName.unique.name,
                                 age: Faker::Number.between(18, 40))
    end
end

35.times do
    Planet.create(name: Faker::StarWars.unique.planet)
end

Soldier.each do |soldier|
    rand(5).times do
        planet = Planet.all.sample
        code_specie = Faker::StarWars.specie
        code_num = Faker::Number.number(4)
        operation_code = "#{code_specie}-#{code_num}"

        Assignment.create(operation_code: operation_code,
                          soldier: soldier,
                          planet: planet,)                      
    end
end

puts "#{Squadron.count} squadrons"
puts "#{Soldier.count} soldiers"
puts "#{Planet.count} planets"
puts "#{Assignment.count} assignments"
puts Squadron.count + Soldier.count + Planet.count + Assignment.count