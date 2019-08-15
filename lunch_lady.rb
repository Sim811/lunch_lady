require "pry"

#  Couldn't figure out how to show the cart's items that the user chose at the end
#   and add up the sum of them


#Classes
#LunchLady
#User
#MainDish
#SideDish

class LunchLady
   
  
  def initialize
    @cart = []
    @wallet = []
    @main_dishes = [
      
      MainDish.new("Steak", "5.00"), 
      MainDish.new("Chicken", "2.50"), 
      MainDish.new("Fish", "1.50")
    
    ]
    @side_dishes = [

      SideDish.new("Fries", "1.50"),
      SideDish.new("Fruit", "1.00"),
      SideDish.new("Salad", "1.00")

    ]
    puts "--- Welcome to Ruby Cafe ---"
    puts "What is your name?"
    name = gets.strip
    puts "How much money do you have?"
    wallet = gets.to_i
    #Create User Instance
    main_dish
  end

  def main_dish
    puts "-- Choos Main Dish --"
    @main_dishes.each_with_index do |main, index|
      puts "#{index + 1}) #{main.item} #{main.price}"
    end
    print ">"
    md = gets.strip
    @cart << md 
    puts @cart
    
    side_dish
  end
    
    

  def side_dish
    puts "-- Choose Side --"
    @side_dishes.each_with_index do |side, index|
      puts "#{index + 1}) #{side.item} #{side.price}"
    end
    print ">"
    sd = gets.strip
    @cart << sd
    puts @cart

    side_dish2
  end

  def side_dish2
    puts "-- Choose Side --"
    puts "Fries"
    puts "Salad"
    puts "Fruit"
    puts "Veggies"
    print ">"
    sd = gets.strip
    @cart << sd
    puts @cart
    
    user_total
  end

  def user_total
    puts "-- Your order --"
    


  end



end

class MainDish
  attr_accessor :item, :price
  
  def initialize(item, price)
      @item = item
      @price = price
  end
end

class SideDish
  attr_accessor :item, :price
  
  def initialize(item, price)
      @item = item
      @price = price
  end
end


# class cart
#   attr_accessor :item, :price
  
#   def initialize(item, price)
#       @item = item
#       @price = price
#   end
# end
LunchLady.new


