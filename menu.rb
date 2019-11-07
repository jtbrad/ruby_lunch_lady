require "pry"
require "colorize"

require_relative "dish"

class Menu
  attr_accessor :main_dishes, :side_dishes

  def initialize

    @main_dishes = [
      Dish.new("Hamburger", 5.00)
    ]

    @side_dishes = [
      Dish.new("French Fries", 1.00)
    ]

  end

  def print_main_dishes
    puts "--- Main Dishes ---"
    
    @main_dishes.each_with_index do |main_dish, index|
      puts "#{index + 1}. #{main_dish.name}"
    end

  end

end