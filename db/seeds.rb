# gear_items = JSON.parse(File.read(Rails.root.join('db/gear_items.json')))

# gear_items.each do |g|
#     GearItem.create(
#         name: g['name'],
#         category: g['category'],
#         image: g['image'],
#         description: g['description'],
#         weight: g['weight'],
#         packed: g['packed'],
#         quantity: g['quantity'],
#         user: User.first
#     )
# end

dave = User.create(email: "davidrobertregan@gmail.com", password: "password")

dave.add_default_gear