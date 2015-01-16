class Shopcart

  def initialize
    @items = []
  end

  def add item, qty
    @items << [item, qty]
  end

  # @items
  #  => { "bananas": 2, "orange_jiusdljfn": 4}

  def pay
     # iterate through the @items and count qty * item.apply_discount("Saturday")
     puts @items
  end
end

class Item
  def initialize(name, price)
    @name = name
    @price = price
    @cost=@name*@price
  end
end



class Fruit < Item

 def initialize name, price, discount
    super(name, price)
    @discount = (100 - discount)/100
 end

 def apply_discount weekday
    if weekday == "Saturday" || weekday =="Sunday"
      @price * @discount
    else 
      @price
    end
  end
end




class Other < Item
 def initialize name, price, discount
    super(name, price)
    end
end



class Housewares < Item

 def initialize name, price, discount
    super(name, price)
    @discount = (100 - discount)/100
 end

 def apply_discount 
    if @price >= 100
      @price * @discount
    else 
      @price
    end
  end
end





my_shop = Shopcart.new

bananas_in_basket = Fruit.new("Bananas", 10, 10)
bananas_in_basket.apply_discount("Saturday")
oj_in_basket = Fruit.new("OJ", 10, 10)
oj_in_basket.apply_discount("Saturday")



rice_in_basket=
vc_in_basket=
anchovies_in_basket=

my_shop.add(bananas_in_basket, 5)

my_shop.pay

#class Item
 # def initialize(name, price)
  #  @name = name
   # @price = price
    #@cost=@name*@price
#  end
#end


#class Fruit < Item

 # def initialize name, price, discount
  #  super(name, price)
   # @discount = (100 - discount)/100
  #end

  #def apply_discount weekday
   # if weekday == "Saturday"
    #  @price * @discount
  #  else 
   #   @price
  #  end
#  end
# end

#class Housewares < Item
 # def apply_discount
  #  if @price>=100
   # @@vccosts=@@vccosts+@costs*0.95  
    #else
#    @@vccosts=@@vccosts+@costs
 #   puts "#{@quantity} of #{@name}s cost #{@@vccosts}€"
 #   end
#  end
 # def self.total
  #  return @@vccosts
#  end
#end



