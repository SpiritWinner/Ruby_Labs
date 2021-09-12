def revers_or_pow(line)
  if line.downcase[-2..-1] == "cs"
    #puts (2 ** line.size).to_s
    (2 ** line.size)
  else
    #puts line.reverse.to_s
    line.reverse
  end
end
