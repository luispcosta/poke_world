class PokeWorld
  NORTH = 'N'.freeze
  SOUTH = 'S'.freeze
  EAST = 'E'.freeze
  WEST = 'O'.freeze

  def self.catch_pokemons(movements)
    x = 0
    y = 0
    world = {}
    world[[x, y]] = true

    Array(movements).each do |movement|
      next unless movement.is_a?(String) && !movement.empty?

      movement = movement.upcase

      if movement == NORTH
        y += 1
      elsif movement == SOUTH
        y -= 1
      elsif movement == EAST
        x += 1
      elsif movement == WEST
        x -= 1
      end

      next if world[[x, y]]

      world[[x, y]] = true
    end

    world.keys.count
  end
end

movements = ARGV.any? ? ARGV[0].chars : []
puts PokeWorld.catch_pokemons(movements)