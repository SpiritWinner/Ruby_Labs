STUDENT_LIST_PATH = './student.txt'
RESULT = './results.txt
'

def get_data
  puts "Please enter age of student or \"-1\" for exit"
  gets.to_i
end

def read
  students = []
  File.foreach(STUDENT_LIST_PATH) { |line| students.push(line.chomp) }
end

def write_fail
for stud in students
  File.write(RESULT, "#{stud}\n", mode: "a") if stud.include?("#{age}")
  students.delete(stud) if stud.include?("#{age}")
end


def write_in_consol
  File.foreach(STUDENT_LIST_PATH) { |student| puts student }
end

read
write_in_consol