# get available funds
bal = File.read("balance.txt").to_i
time = Time.new
mnt = time.month
yr = time.year
# loop through the expenses input and write to file
File.open("expenses.txt", "a+") { |file| file.write("Modification time: #{time}\n
")}
    File.open("ledger_det.txt", "a+") { |file| file.write("#{time}
---------------------
Expenses\n\n")}
    File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("#{time}
---------------------
Expenses\n\n")}

#def expens
@her = 0.to_i
puts "How many expenses:"
oth = gets.chomp.to_i
    xn = 1
oth.times do
    puts "Expense name(#{xn}/#{oth}):"
    nm = gets.chomp
    nm.capitalize
    puts "Expense amount(#{xn}/#{oth}):"
    xn = xn + 1
    oe = gets.chomp.to_i
    @her = oe + @her
    File.open("expenses.txt", "a") { |file| file.write("#{nm.capitalize}: #{oe}\n
")}
    File.open("ledger_det.txt", "a+") { |file| file.write("#{nm.capitalize}: #{oe}\n
")}
    File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("#{nm.capitalize}: #{oe}\n
")}
end
#end

# getting remainder after additions and expenses
left = bal - @her

# updates balance file with adjustments
File.open("balance.txt", "w+") { |file| file.write("#{left}")}
# outputting to terminal and file
puts "
You have #{left} left after,
(#{oth}) expenses totalling #{@her}."
# Writes a header while appending detailed ledger
File.open("ledger_det.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{oth}) expenses totalling #{@her}.\n
")}
File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{oth}) expenses totalling #{@her}.\n
")}
#menu