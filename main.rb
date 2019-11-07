require "pry"
require "colorize"

class RubyLunchLady

  def initialize
    @order = []
    @main_dishes = ["Hamburger"]
    puts "Welcome to Ruby's what can I get for you?"
    puts "--- Main Dishes ---"

    @main_dishes.each_with_index do |main_dish, index|
      puts "#{index + 1}. #{main_dish}"
    end

    print "Make a selection: >"
    @order << @main_dishes[gets.to_i - 1]

    puts "You ordered: "

    @order.each do |item|
      puts item
    end

    puts "Have a nice day!"

  end

end

RubyLunchLady.new