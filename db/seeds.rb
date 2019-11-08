require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
content = open(url).read
parsed_json = JSON.parse(content)

parsed_json["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
