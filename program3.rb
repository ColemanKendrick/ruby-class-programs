puts "Enter User's name"
un = gets.chomp
puts "Enter User's email"
email = gets.chomp
puts "This is the users name: "+un+"\nand their email : "+email

File.write("foo.txt", "#{un}\n#{email}")


puts "do you want to search by Email? (yes or no)"
yn = gets.chomp
if yn == "yes"
  puts "please enter a email to search"
  semail = gets.chomp
  if File.read("foo.txt").include?(semail)
    puts "email found! Printing data \n"
    File.open("foo.txt").each do |line|
      puts line

    end
   else
    puts "Not found"
  end
end

