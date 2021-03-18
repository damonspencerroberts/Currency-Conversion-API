# creates the json 
json.array! @histories do |history|
  json.extract! history, :id, :amount, :rate, :total, :init_currency, :wanted_currency, :created_at
end