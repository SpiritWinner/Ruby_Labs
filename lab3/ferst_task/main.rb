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

