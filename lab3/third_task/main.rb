START_BALANCE = 100.0
BALANCE = './balance.txt'

def read_file
  if File.exist?(BALANCE)
    File.read(BALANCE).chomp
  else
    START_BALANCE
  end
end

def write_file(total)
  File.write(BALANCE, total, mode: "w")
end

def balance(total)
  print "Balance: #{total}\n"
end

