# creates the json 
json.array! @histories do |history|
  json.extract! history, :id, :amount, :rate, :init_currency, :wanted_currency
end