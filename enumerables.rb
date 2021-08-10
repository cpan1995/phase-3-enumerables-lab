require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  newArray = []
  newArray = (spicy_foods.map { 
    |food| food[:name]
  })
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  newArray = []
  spicy_foods.select{
    |food| 
    if (food[:heat_level] > 5)
     newArray << food
    end
  }
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  spicy_foods.each do|food|
    hotNess = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{hotNess}"
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.select do |food|
    if (food[:cuisine] === cuisine)
      return food
    end
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spicy_foods.select do |food|
    hotNess = "🌶" * food[:heat_level]
    if food[:heat_level] > 5
      puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{hotNess}"
    end
  end
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  counter = 0
  total = 0
  spicy_foods.each do |food|
    counter += 1
    total += food[:heat_level]
  end
  total/counter.to_f
end

p average_heat_level(spicy_foods)