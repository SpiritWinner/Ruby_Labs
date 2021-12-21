STUDENT_LIST_PATH = './student.txt'
RESULT = './results.txt'

def read_file
  students = []
  file = File.open(STUDENT_LIST_PATH)
  file.readlines.each do |student|
    temp = student.split(' ')
    students << [temp[0], temp[1], temp[2].chomp.to_i]
  end
  file.close
  students
end

def write_file(content)
  file = File.open(RESULT, 'w')
  content.each do |student|
    file.write "Student: #{student[0]} #{student[1]} \tage: #{student[2]}\n"
  end
  file.close
end

def main
  students = []
  stedent_list = read_file
 
  loop do
    puts 'Please enter age of student or "-1" for exit'
    age = gets.to_i
    break if age == -1

    flag = false
    stedent_list.each do |student|
      if student[2] == age
        students << student
        flag = true
      end
    end
    puts "Don't have student with current age" unless flag
  end

  write_file(students)
  students
end

main