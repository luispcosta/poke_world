require_relative 'poke_world'
require 'benchmark'

movements = ['N', 'S', 'O', 'E']

puts "100 movements ..."
puts "#{Benchmark.realtime { puts PokeWorld.catch_pokemons(100.times.map { movements.sample }) }} seconds"
puts " ---- "
puts

puts "1_000 movements ..."
puts "#{Benchmark.realtime { puts PokeWorld.catch_pokemons(1_000.times.map { movements.sample }) }} seconds"
puts " ---- "
puts

puts "100_000 movements ..."
puts "#{Benchmark.realtime { puts PokeWorld.catch_pokemons(100_000.times.map { movements.sample }) }} seconds"
puts " ---- "
puts

puts "1_000_000 movements ..."
puts "#{Benchmark.realtime { puts PokeWorld.catch_pokemons(1_000_000.times.map { movements.sample }) }} seconds"
puts " ---- "
puts

puts "10_000_000 movements ..."
puts "#{Benchmark.realtime { puts PokeWorld.catch_pokemons(10_000_000.times.map { movements.sample }) }} seconds"
puts " ---- "
puts