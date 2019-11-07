require "pry"
require "colorize"

require_relative "dish"

class RubyLunchLady

  def initialize
    @order = []
    @main_dishes = [Dish.new("Hamburger")]
    puts "--- Welcome to Ruby's ---".colorize(:red)
    get_main_dish
    
    puts "You ordered: "
    
    @order.each do |dish|
      puts dish.name
    end
    
    puts "Have a nice day!" 
  end
  
  def get_main_dish
    puts "What can I get for you?"
    puts "--- Main Dishes ---"
  
    @main_dishes.each_with_index do |main_dish, index|
      puts "#{index + 1}. #{main_dish.name}"
    end
  
    print "Make a selection: >"
    @order << @main_dishes[gets.to_i - 1]    
  end

end

RubyLunchLady.new