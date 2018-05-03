restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def mayor_valor(hash)
  hash.max_by{|k,v| v}
end
print mayor_valor(restaurant_menu)

def menor_valor(hash)
  hash.min_by{|k,v| v}
end
print menor_valor(restaurant_menu)

arr = []
restaurant_menu.each { |k,v| arr << v }
avg = arr.inject(:+)/arr.size
puts avg

platos = []
restaurant_menu.each { |k,v| platos << k}
puts platos

valores = []
restaurant_menu.each { |k,v| valores << v}
puts valores

def agregar_iva(hash)
  hash.each do |k,v|
  v = v.to_f * 1.19
  hash[k] = v
  end
end
puts agregar_iva(restaurant_menu)

def descuento(hash)
  hash.each do |k,v|
    if k.split(" ").size > 1
      v = v.to_f * 0.8
      hash[k] = v
    end
  end
  puts hash
end
puts descuento(restaurant_menu)
