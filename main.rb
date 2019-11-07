require "pry"
require "colorize"

require_relative "dish"
require_relative "menu"

class RubyLunchLady

  def initialize
    @order = []
    @menu = Menu.new
    @main_dishes = [Dish.new("Hamburger", 5.00)]
    @side_dishes = [Dish.new("French Fries", 1.00)]
    puts "--- Welcome to Ruby High School Lunch Program ---".colorize(:red)
    get_main_dish
    get_side_dish
    get_side_dish
    get_order  
  end
  
  def get_main_dish
    puts "What can I get for you?"
    @menu.print_main_dishes
    get_selection(@menu.main_dishes) 
  end

  def get_selection(dishes)
    print "Make a selection: >"
    @order << dishes[gets.to_i - 1]
  end

  def get_side_dish
    puts "Your meal comes with 2 sides."
    puts "--- Side Dishes ---"

    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish.name}"
    end

    print "Make a selection: >"
    @order << @side_dishes[gets.to_i - 1]
  end

  def get_add_on

  end
  
  def get_order
    cost = 0.00
    puts "You ordered: "
    
    @order.each do |dish|
      cost += dish.price
      puts dish.name
    end

    puts "Your total is $#{cost}."
    
    puts "Have a nice day!" 
  end

end

RubyLunchLady.new