# time to put in a menu. mebbe.

def menu 
    puts "(1) Additions"
    puts "(2) Expenses"
    puts "(3) Both"
    inpt = gets.chomp.to_i
    if inpt == 1 then
        require "./additions.rb"
    elsif inpt == 2 then
        require "./expenses.rb"
    elsif inpt == 3 then
        require "./account.rb"
    else
        puts "Wrong answer, pls to try again"
    end
end
=begin
# get available funds
bal = File.read("balance.txt").to_i
time = Time.new

# getting remainder after additions and expenses
left = bal + @dep - @her

# updates balance file with adjustments
File.open("balance.txt", "w+") { |file| file.write("#{left}")}
# outputting to terminal and file
puts "
You have #{left} left after,
(#{oth}) expenses totalling #{@her} and,
(#{adds}) additions totalling #{@dep}"



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
(#{adds}) additions totalling #{@dep}")}
=end
menu