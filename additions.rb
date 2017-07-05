# get available funds
bal = File.read("balance.txt").to_i
time = Time.new
mnt = time.month
yr = time.year
# loop through addition input and write
File.open("funds.txt", "a+") { |file| file.write("Modification time: #{time}\n
")}
    File.open("ledger_det.txt", "a+") { |file| file.write("#{time}
---------------------
Additions\n\n")}
    File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("#{time}
---------------------
Additions\n\n")}
#def addit
@dep = 0.to_i
puts "How many additions:"
adds = gets.chomp.to_i
    xn = 1
adds.times do
    puts "Addition name(#{xn}/#{adds}):"
    anm = gets.chomp
    anm.capitalize
    puts "Addition amount(#{xn}/#{adds}):"
    oa = gets.chomp.to_i
    @dep = oa + @dep
    xn = xn + 1
    File.open("funds.txt", "a+") { |file| file.write("#{anm.capitalize}: #{oa}\n
")}
    File.open("ledger_det.txt", "a+") { |file| file.write("#{anm.capitalize}: #{oa}\n
")}
    File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("#{anm.capitalize}: #{oa}\n
")}
end
#end

# getting remainder after additions and expenses
left = bal + @dep

# updates balance file with adjustments
File.open("balance.txt", "w+") { |file| file.write("#{left}")}
# outputting to terminal and file
puts "
You have #{left} left after,
(#{adds}) additions totalling #{@dep}.
"

# Writes a header while appending detailed ledger
File.open("ledger_det.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{adds}) expenses totalling #{@dep}.\n
")}
File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{adds}) expenses totalling #{@dep}.\n
")}
#menu