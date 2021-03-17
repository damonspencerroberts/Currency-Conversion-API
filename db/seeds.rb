# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

history_cases = [
  {
    amount: 15,
    init_currency: "EUR",
    wanted_currency: "USD",
    rate: 1.2,
    total: 18
  },{
    amount: 150,
    init_currency: "EUR",
    wanted_currency: "GBP",
    rate: 0.9,
    total: 135
  },{
    amount: 55.50,
    init_currency: "EUR",
    wanted_currency: "CHF",
    rate: 1.05,
    total: 58.28
  }
]

history_cases.each_with_index do |history_case, index|
  History.create(history_case)
  puts "Finished #{index + 1} of #{history_cases.length}"
end
