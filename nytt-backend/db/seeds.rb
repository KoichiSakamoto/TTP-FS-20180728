# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create({username: 'Isaac Fiore', email: "isaacfiore@butts.com"})

portfolio1 = Portfolio.create({user_id: 1})

stock1 = Stock.create({tickername: "YAS", portfolio_id: 1, quantity: 5000})
stock2 = Stock.create({tickername: "ITS", portfolio_id: 1, quantity: 5000})
stock3 = Stock.create({tickername: "TR3", portfolio_id: 1, quantity: 5000})
stock4 = Stock.create({tickername: "WAY", portfolio_id: 1, quantity: 5000})

transaction1 = Transaction.create({user_id: 1, stock_id: 1, purchase_or_sale: "purchase", quantity: 5000})
