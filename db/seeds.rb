
Location.destroy_all
Mall.destroy_all
Store.destroy_all
Variable.destroy_all
User.destroy_all
Cart.destroy_all
ProductProfile.destroy_all


bayshore = Mall.create(name: "Bayshore Shopping Center")
rideau = Mall.create(name: "Rideau Center")

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


emma = User.create(email: "emma@orhun.com", username:"emma", password: "emma1999")
emma_cart = Cart.create(user: emma)

emma_cart.products << on_tshirt
emma_cart.products << on_sweater
