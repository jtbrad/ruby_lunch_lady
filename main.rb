require "pry"
require "colorize"

require_relative "dish"
require_relative "menu"

class RubyLunchLady

  def initialize
    @menu = Menu.new
    @order = []
    @wallet = 20.00
    
    puts "--- Welcome to Ruby High School Lunch Program ---".colorize(:red)
    puts "You have $#{@wallet} left in your account."
    get_order
  end
  
  def get_order
    cost = 0.00
    
    get_meal    
    get_add_ons

    complete_order
    
    puts "You ordered: "
    
    @order.each do |dish|
      cost += dish.price
      puts dish.name
    end
    
    puts "Your total is $#{cost}."

    if @wallet < cost
      puts "You have exceeded the amount in your account."
      get_order
    end
    
    puts "Have a nice day!" 
  end
  
  def get_meal
    puts "What can I get for you?"
    get_main_dish
    puts "Your meal comes with 2 sides."
    puts "Select your first side."
    get_side_dish
    puts "Select your second side."
    get_side_dish
  end
  
  def get_add_ons
    print "Do you want any more add-ons? (y/n): >"
    
    case gets.strip
    when "y"
      get_add_on_dish
      get_add_ons
    when "n"
      
    else
      puts "Invalid selection"
      get_add_ons
    end
    
  end
  
  def complete_order
    puts "--- Make A Selection ---"
    puts "1. Complete order."
    puts "2. Clear order."
    print "Selection: >"

    case gets.to_i
    when 1 
    when 2
      clear_order
      get_order
    else
      puts "Invalid selection."
      get_order
    end
    
  end
  
  def get_main_dish
    @menu.print_main_dishes
    get_selection(@menu.main_dishes) 
  end
  
  def get_side_dish
    @menu.print_side_dishes
    get_selection(@menu.side_dishes)
  end
  
  def get_add_on_dish
    @menu.print_add_on_dishes
    get_selection(@menu.add_on_dishes)
  end
  
  def get_selection(dishes)
    print "Make a selection: >"
    @order << dishes[gets.to_i - 1]
  end
  
  def clear_order
    @order.clear
  end

end

RubyLunchLady.new