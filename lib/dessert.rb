
class Dessert
  
attr_accessor:name
attr_accessor:calories 
attr_accessor:flavor
  
  def initialize(name, calories)
    @name = name
    @calories = calories 
  end
  
  def healthy?
    return true if @calories < 400
    return false if @calories >= 400
  end
  
  def delicious?
    return true
  end
  
end

class JellyBean < Dessert
  
  def initialize(flavor)
    @name = flavor +" " +  "jelly bean"
    @calories=5
    @flavor = flavor
   
   
  end
  
  def delicious?
     false if @flavor == 'licorice'
     true if @flavor != 'licorice'
  end
end

cake  = Dessert.new("cake",400)
cake.healthy?
cake.delicious?

apple = Dessert.new("apple",75)
apple.healthy?
apple.delicious?

can_set = Dessert.new("ice cream",80)
can_set.healthy?
can_set.delicious?

jelly_bean = JellyBean.new("vanilla")
jelly_bean.delicious?

candy = JellyBean.new('licorice')
candy.delicious?



