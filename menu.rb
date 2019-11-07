require "pry"
require "colorize"

require_relative "dish"

class Menu
  attr_accessor :main_dishes, :side_dishes, :add_on_dishes

  def initialize

    @main_dishes = [
      Dish.new("Chicken Sandwich", 3.00),
      Dish.new("Hamburger", 5.00),
      Dish.new("Hot Dog", 2.50)
    ]

    @side_dishes = [
      Dish.new("French Fries", 1.00),
      Dish.new("Salad", 1.50),
      Dish.new("Sweet Potato Fries", 1.50)
    ]

    @add_on_dishes = [
      Dish.new("Ice Cream", 1.00),
      Dish.new("Jello Cup", 0.50),
      Dish.new("Milk", 0.50),
      Dish.new("Orange Juice", 1.00)
    ]

  end

  def print_main_dishes
    puts "--- Main Dishes ---"
    
    @main_dishes.each_with_index do |main_dish, index|
      puts "#{index + 1}. #{main_dish.name}"
    end

  end

  def print_side_dishes
    puts "--- Side Dishes ---"

    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish.name}"
    end

  end

  def print_add_on_dishes
    puts "--- Add On Dishes"

    @add_on_dishes.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish.name}"
    end

  end

end