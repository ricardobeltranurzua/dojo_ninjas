# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# tarea 1 de consola CodinDojo
Ninja.where(dojo_id: 4).destroy_all
Dojo.where(id: 4).destroy_all

Ninja.where(dojo_id: 5).destroy_all
Dojo.where(id: 5).destroy_all

Ninja.where(dojo_id: 6).destroy_all
Dojo.where(id: 6).destroy_all
puts "Tarea 1 . Hecho"

# Tarea 2

h = Dojo.new
h.name = "Dojo 1"
h.city = "Santiago"
h.state = "ST"
h.save

h = Dojo.new
h.name = "Dojo 2"
h.city = "Temuco"
h.state = "TE"
h.save

h = Dojo.new
h.name = "Dojo 3"
h.city = "Concepcion"
h.state = "CO"
h.save
puts "Tarea 2 . Hecho"

# tarea 3
u = Dojo.new
u.save
puts u.errors.messages
puts "tarea 3 .hecho"

#tarea 4, 5, 6
n = Ninja.new
n.first_name = "Ninja 1"
n.last_name = "ninja n1"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 2"
n.last_name = "ninja n2"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 3"
n.last_name = "ninja n3"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 4"
n.last_name = "ninja n4"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 5"
n.last_name = "ninja n5"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 6"
n.last_name = "ninja n6"
n.dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 7"
n.last_name = "ninja n7"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 8"
n.last_name = "ninja n8"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 9"
n.last_name = "ninja n9"
n.dojo = Dojo.where(name: "Dojo 3").first
n.save

puts "tarea 4, 5, 6 hecha"
puts "Ninjas: #{Ninja.all.count}"

#tarea 7
# find, requiere el ID
# Where, requiere cualquier parametro
# Where, siempre retorna array
puts Dojo.where(name: "Dojo 1").first.ninja
puts "tarea 7 hecha"

#tarea 8
puts Dojo.where(name: "Dojo 2").
  first.ninja.order("created_at desc").
  pluck(:first_name)
puts "tarea 8 hecha"

#tarea 9
puts "Antes: #{Dojo.where(name: "Dojo 2").count}"

Dojo.where(name: "Dojo 2").first.destroy
puts "Despues: #{Dojo.where(name: "Dojo 2").count}"


puts "tarea 9 hecha"






