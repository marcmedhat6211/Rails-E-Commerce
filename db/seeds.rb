# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
    Brand.create(name: "brand ##{i}")
  end

  5.times do |i|
    Category.create(name: "category ##{i}")
  end

  5.times do |i|
    Order.create(status: "pending",user_id:"#{i}",store_id:"#{i}")
  end
 
  5.times do |i|
    ProductOrder.create(product_id: "#{i}",order_id:"#{i}",quantity:"5")
  end

  5.times do |i|
    Product.create(title: "product##{i}",description:"this is product description",price:"#{i}",stock:"#{i}")
  end


#     5.times do |i|

    User.create(id:"5",name: "user_1",email:"mostafa@gmail.com",encrypted_password:'qi8H8R7OM4xMUNMPuRAZxlY',role:"buyer",
    reset_password_token:'qi8H8R7OM4xMUNMPuRAZxlY')
 
  
#     end

#   5.times do |i|
    Store.create(name: "store",summary:"store summary",user_id:"1")
    # Store.create(name: "store",summary:"store summary",user_id:"2")
#   end

