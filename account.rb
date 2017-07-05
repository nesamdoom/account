# time to put in a menu. mebbe.
=begin
def menu 
    puts "(1) Additions"
    puts "(2) Expenses"
    puts "(3) Both"
    inpt = gets.chomp.to_i
    if inpt == 1 then
        addit
    elsif inpt == 2 then
        expens
    elsif inpt == 3 then
        addit
        expens
    else
        puts "Wrong answer, pls to try again"
    end
end
=end
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
left = bal + @dep - @her

# updates balance file with adjustments
File.open("balance.txt", "w+") { |file| file.write("#{left}")}
# outputting to terminal and file
puts "
You have #{left} left after,
(#{oth}) expenses totalling #{@her} and,
(#{adds}) additions totalling #{@dep}."



# writes basic ledger
File.open("ledger.txt", "w+") { |file| file.write("
------------------------------------
Initial: #{bal}
Additions: #{@dep}
Expenses: #{@her}
Remaining: #{left}\n
#{time}
------------------------------------")}

# Writes a header while appending detailed ledger
File.open("ledger_det.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{oth}) expenses totalling #{@her}
(#{adds}) additions totalling #{@dep}.\n")}
File.open("ledger_det_#{mnt}-#{yr}.txt", "a+") { |file| file.write("
------------------------------------
You have #{left} left after,
(#{oth}) expenses totalling #{@her}
(#{adds}) additions totalling #{@dep}.\n")}
#menu