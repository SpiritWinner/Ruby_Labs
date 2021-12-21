STUDENT_LIST_PATH = './student.txt'
BUFFER = './buffer.txt'

def index
  File.foreach(STUDENT_LIST_PATH) { |student| puts student }
end

def where(name)
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    @student_id = index if student.include?(name)
  end
  @student_id
end

def update(id, name)
  file = File.open(BUFFER, 'w')
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    file.puts(id == index ? name : student)
  end

  file.close
  File.write(STUDENT_LIST_PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, 'w')
  File.foreach(STUDENT_LIST_PATH).with_index do |student, index|
    if id != index
      file.puts(student)
    end
  end

  file.close
  File.write(STUDENT_LIST_PATH, File.read(BUFFER))
  File.delete(BUFFER) if File.exist?(BUFFER)
end