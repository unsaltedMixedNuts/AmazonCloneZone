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
