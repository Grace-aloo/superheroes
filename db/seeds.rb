# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "WE ROLLING"
hero = Hero.create([  

    {  "name": "Kamala Khan", "super_name": "Ms. Marvel" },  
    
    {  "name": "Doreen Green", "super_name": "Squirrel Girl" },  
    
    {  "name": "Gwen Stacy", "super_name": "Spider-Gwen" }
    
    ])

power = Power.create([
    {
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ])    
 
hero-power = HeroPower.create([{
    "strength": "Strong",
    "power_id": 2,
    "hero_id": 3
  },
  {
    "strength": "Average",
    "power_id": 1,
    "hero_id": 3
  },
  {
    "strength": "Average",
    "power_id": 1,
    "hero_id": 2
  }])  

  puts "OVER AND OUT"