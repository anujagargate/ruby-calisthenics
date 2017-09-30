module FunWithStrings
  
  def palindrome?
    new_string = self.gsub(/\W/, '').downcase
    true if new_string == new_string.reverse
  end
  
  def count_words
    new_string = self.gsub(/[\W]/,' ')
    array = new_string.downcase.split(" ")
    count = Hash.new(0)
    array.each do |index|
      count[index] += 1
    end
    return count
  end


 def anagram_groups
   hash = {}
   array = self.downcase.gsub(/\W/, ' ').split(" ")
   array.each do |i|
    key = i.split('').sort.join('')
    hash[key] ||= []
    hash[key] << i
    end
    return hash.values
 end
   
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
