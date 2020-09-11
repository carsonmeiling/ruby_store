# Display a menu in the console for the user to interact with.
# Create a default array of hashes that represent items at a grocery store.
# Create a menu option to add items to a user's grocery cart.
# Create a menu option to display all the items in the cart.
# Create a menu option to remove an item from the users cart.
# Create a menu option to show the total cost of all the items in the user's cart.
# Add new items to the grocery store.
# Zip it up and turn it in!

@inventory = [
  {item: "Apple", price: 2, quantity_left: 10},
  {item: "Carrots", price: 2.50, quantity_left: 10},
  {item: "Peach", price: 1, quantity_left: 10},
  {item: "Chicken", price: 3, quantity_left: 10},
  {item: "Beef", price: 4, quantity_left: 10},
]

cart = []

def greeting
  design_spaces
  puts "Welcome to the store!"
  puts "Select and option from the menu below to begin."
  main_menu
end

def design_spaces
  puts `clear`
  puts '--------------'
  puts '--------------'
  puts '--------------'
end

def main_menu
  puts "1) - See available items for purchase"
  puts "2) - See current cart inventory "
  puts "3) - Add items to store inventory"
  puts "4) - Exit store"
  user_selection = gets.strip.to_i

  case user_selection
  when 1
    store_items
  when 2
    user_cart
  when 3
    add_new_items
  when 4
    puts `exit`
  when 5
    puts "That is not an option, try again"
    main_menu
  end
end

def store_items
  design_spaces
  puts "store inventory"
  @inventory.each_with_index do |product, i|
    puts "#{i + 1}) Item: #{product[:item]} Price: $#{product[:price]}" 
  end
  puts "---------"
  puts "---------"
  puts "---------"
  puts "pick an item to add"
  user_choice  = gets.strip.to_i
  puts user_choice
end

def user_cart
  # todo
end

def add_new_items
  #todo
end

greeting