ACTORS_LIST_PATH = 'artists.txt'
BUFFER = 'buffer.txt'

def index
  File.foreach(ACTORS_LIST_PATH) { |actor| puts actor }
end

def where(name)
  File.foreach(ACTORS_LIST_PATH).with_index do |actor, index|
    @actor_id = index if actor.include?(name)
  end

  @actor_id
end

def update(id, name)
  file = File.open(BUFFER, 'w')
  File.foreach(ACTORS_LIST_PATH).with_index do |actor, index|
    file.puts(id == index ? name : actor)
  end

  file.close
  File.write(ACTORS_LIST_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end
