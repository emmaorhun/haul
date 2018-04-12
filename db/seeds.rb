
Location.destroy_all
Mall.destroy_all
Store.destroy_all
Variable.destroy_all
User.destroy_all
Cart.destroy_all
Product.destroy_all
ProductProfile.destroy_all


#BAYSHORE SHOPPING CENTER INFO
bayshore = Mall.create(name: "Bayshore Shopping Center")

Location.create(mall: bayshore, street_address: "100 Bayshore Dr", province: "Ontario", city: "Ottawa", postal_code: "K2H7C8")

old_navy = Store.create(mall: bayshore, name: "Old Navy")
the_bay = Store.create(mall: bayshore, name: "The Bay")

on_tshirt = Product.create(store: old_navy, stock: 200)
on_sweater = Product.create(store: old_navy, stock: 150)

ProductProfile.create(product: on_tshirt, name: "Winter Turtleneck", description: "Cozy, polyester smoothie, perfect for cuddling up with a nice book")
Variable.create(store: old_navy, product: on_tshirt, type_of_variable: "color", option: "green")
Variable.create(store: old_navy, product: on_tshirt, type_of_variable: "size", option: "small")

ProductProfile.create(product: on_sweater, name: "Cozy Crewneck", description: "Definitely not made of cat hair")
Variable.create(store: old_navy, product: on_sweater, type_of_variable: "color", option: "yellow")
Variable.create(store: old_navy, product: on_sweater, type_of_variable: "size", option: "large")


#RIDEAU CENTER INFO
rideau = Mall.create(name: "Rideau Center")

Location.create(mall: rideau, street_address: "50 Rideau S", province: "Ontario", city: "Ottawa", postal_code: "K1N9J7")

sony = Store.create(mall: rideau, name: "Sony")
roots = Store.create(mall: rideau, name: "Roots")

sony_headphones = Product.create(store: sony, stock: 60)
ProductProfile.create(product: sony_headphones, name: "SONY 1000XM2", description: "Enjoy industry-leading digital noise cancellation in a wireless headphone, with a Smart Listening feature that optimizes your sound based on your activity and surroundings")
Variable.create(store: sony, product: sony_headphones, type_of_variable: "color", option: "black")
Variable.create(store: sony, product: sony_headphones, type_of_variable: "color", option: "gold")

roots_scarf = Product.create(store: roots, stock: 150)
ProductProfile.create(product: roots_scarf, name: "Abstract Flag Scarf")
Variable.create(store: roots, product: roots_scarf, type_of_variable: "color", option: "cascade blue")

roots_sweatpants = Product.create(store: roots, stock: 50)
ProductProfile.create(product: roots_sweatpants, name: "Easy Ankle Sweatpant", description: "Comfy classics, perfect for lounging or getting shit done!")
Variable.create(store: roots, product: roots_sweatpants, type_of_variable: "color", option: "salt and pepper")
Variable.create(store: roots, product: roots_sweatpants, type_of_variable: "size", option: "medium")


#USERS
emma = User.create(email: "emma@orhun.com", username:"emma", password: "emma1999")
emma_cart = Cart.create(user: emma)

emma_cart.products << on_tshirt
emma_cart.products << on_sweater
