def revers_or_pow(line)
  if line.downcase[-2..-1] == 'cs'
    # puts (2 ** line.size).to_s
    (2 ** line.size)
  else
    # puts line.reverse.to_s
    line.reverse
  end
end

def hash_pokemon
  # puts 'Count pokemon'
  count = gets.to_i
  pokemons = []
  count.times do
    # puts 'Enter name of Pokemon'
    name = gets.chomp
    # puts 'Enter color of Pokemon'
    color = gets.chomp
    pokemons << { name => color }
  end
  pokemons
end
