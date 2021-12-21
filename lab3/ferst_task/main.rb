STUDENT_LIST_PATH = './student.txt'
BUFFER = './buffer.txt'

def index
  File.foreach(STUDENT_LIST_PATH) { |student| puts student }
end

def find(id)
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    puts student if id == index
  end
end

def where(pattern)
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    @student_id = index if student.include?(pattern)
  end
  puts(@student_id)
end

def update(id, text)
  file = File.open(BUFFER, 'w')
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    file.puts(id == index ? text : student)
  end

  file.close
  File.write(STUDENT_LIST_PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, 'w')
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    file.puts(student) if id != index
  end

  file.close
  File.write(STUDENT_LIST_PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

index
find(2)
where('Ai')
update(0, 'Akuloy Nishail')
delete(1)