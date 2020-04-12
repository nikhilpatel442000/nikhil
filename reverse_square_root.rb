# frozen_string_literal:true

# Square root
class SquareRoot
  attr_accessor :collection

  def initialize(collection)
    self.collection = collection
  end

  def reverse
    (0...collection.length).each do |i|
      collection[i] = collection[i].to_s.reverse.to_i
    end
  end

  def second_largest_square_root
    reverse
    index = 0
    collection.collect do |number|
      collection[index] = complete_square_root?(number) ? Math.sqrt(number) : 0
      index += 1
    end
    collection.sort
  end

  private

  def complete_square_root?(number)
    (Math.sqrt(number) % 1).zero?
  end
end
obj = SquareRoot.new(%w[5 9 51 46 41])
print obj.second_largest_square_root[-2].to_i
