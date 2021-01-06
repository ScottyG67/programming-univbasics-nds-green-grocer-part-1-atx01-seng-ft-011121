def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  #collection is AoH, each hash has 3 attributes, :item, :price, :clearance
  #name is String and corrliates to :item in collection
  #need to return full hash with :item==name and nill if no match
  require 'pry'

  item_hash=collection.find {|index| index[:item]==name}
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  #cart is AoH, each hash has 3 attributes, :item, :price, :clearance
  #need to return AoH, each hash has 4 attributes, :item,:price, :clearance (from cart) and :count which is the number of times this hash was in cart
  require 'pry'
  organized_cart=[]
  count = 0
  binding.pry
  cart.each do |index|
    name = index[:item]
    binding.pry
    count = cart.find_all{|i| i[:item]==name}.length
    binding.pry
    organized_cart << index
  end
binding.pry
end


  