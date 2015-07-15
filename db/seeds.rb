# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(name: "Apple TV MD199LL/A (Current Version)", sales_price: 59.99, quantity: 100, dept_id: 2, brand_id: 1 )
Product.create(name: "Roku 3 Streaming Media Player (4230R) With Voice Search (2015 model)", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 2 )
Product.create(name: "Google Chromecast HDMI Streaming Media Player", sales_price: 29.99, quantity: 100, dept_id: 2, brand_id: 3 )
Product.create(name: "Fire TV Stick", sales_price: 39.00, quantity: 100, dept_id: 2, brand_id: 4 )
Product.create(name: "Amazon Fire TV", sales_price: 99.00, quantity: 100, dept_id: 2, brand_id: 4 )
Product.create(name: "Fire TV Stick", sales_price: 39.00, quantity: 100, dept_id: 2, brand_id: 4 )



Department.create(name: "Electronics", parent_dept_id: nil)
Department.create(name: "Television & Video", parent_dept_id: 1)

Brand.create(name: "Apple")
Brand.create(name: "Roku")
Brand.create(name: "Google")
Brand.create(name: "Amazon")

Image.create(url: "http://ecx.images-amazon.com/images/I/41uTXEtgjqL._SX522_.jpg", ord: nil, imageable_id: 1, imageable_type: "Product")
Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/61lD0SQk6wL._SL1600_.jpg", ord: nil, imageable_id: 1, imageable_type: "Review")

Description.create(
  body: "1080p HD programming, including iTunes movies and TV shows, Netflix, Vimeo, photos and more in HD",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Access your purchased movies, TV shows, and music with iTunes Match right from iCloud",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Stream video, games, and more from iOS devices using AirPlay; music, videos, and photos can also be streamed from PCs and Macs",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "HDMI and digital optical audio output; connects to network via Wireless-N or Ethernet",
  ord: nil,
  product_id: 1
)
Description.create(
  body: "Apple TV is a registered trademark of Apple Inc.",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Brand Name",
  body: "Apple",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Item Weight",
  body: "9.6 ounces",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Product Dimensions",
  body: "3.9 x 3.9 x 0.9 inches",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Item model number",
  body: "MD199LL/A",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Color Name",
  body: "Black",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Shipping Weight",
  body: "1.1 pounds",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Date First Available",
  body: "March 7, 2012",
  ord: nil,
  product_id: 1
)

Specification.create(
  title: "Customer Reviews",
  body: "6,551",
  ord: nil,
  product_id: 1
)
