def welcome
  puts "Welcome to AoR Repair Shop!"
  puts "Type '1' if you're a Customer, '2' if you're a Mechanic, or '3' if you're a Manager"
  input = gets.chomp
  welcome_check(input, 0)
end

def welcome_check (input, counter)
  if input == '1'
    if counter != 0
      puts "Are you a new or old customer?"
      response = gets.chomp
      new_or_old(response, counter)
    else
      puts "Welcome! Are you a new or old customer?"
      response = gets.chomp
      return new_or_old(response, counter)
    end
  elsif input == '2'
    puts "Welcome! Which Mechanic are you?"
    response = gets.chomp
    found_mechanic = Mechanic.all.find do |mechanic|
       mechanic.name == response
    end
    puts "Profile Found!"
    return found_mechanic
    #ADD FUNCTIONALITY
  elsif input == '3'
    puts "Welcome! Which Manager are you?"
    response = gets.chomp
    found_manager = Manager.all.find do |manager|
      manager.name == response
    end
    binding.pry
    puts "Profile Found!"
    return found_manager
    #ADD FUNCTIONALITY
  else
    puts "Invalid entry! Please type '1', '2', or '3'!"
  end
end


def new_or_old (response, counter)
  if response == "new"
    puts "What is your name?"
    name = gets.chomp
    puts "What is your reason for visit?"
    reason = gets.chomp
    #CREATE NEW CUSTOMER OBJECT USING CL INPUTS
    puts "Profile Created!"
    Customer.new(name,reason)
  elsif response == "old"
    puts "Welcome back! What is your name?"
    name = gets.chomp
    puts "What is the reason for your visit?"
    reason = gets.chomp
    found_customer = Customer.all.find do |customer|
       customer.name == name
    end
    puts "Profile Found!"
    found_customer
    #ADD QUERY FOR NAME AND ADD REASON FOR VISIT
  else
    puts "Invalid entry! Please type 'new' or 'old'!"
    counter += 1
    welcome_check("1", counter)
  end
end
