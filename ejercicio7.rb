

puts "seleccionar opcion"
puts "1 - Agregar un item (item, stock)"
puts "2 - Quitar un item"
opcion = gets.chomp.to_i

inventario = { "Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6 }

if opcion == 1
  puts "agregue producto y cantidad"
  producto = gets.chomp
  tmp_arr = producto.split(",")
  new_k = tmp_arr[0]
  new_v = tmp_arr[1].to_i
  inventario[new_k] = new_v
end

if opcion == 2
  indice = 0
  puts "Inventario:"
  inventario.each do |k,v|
    indice += 1
    puts "#{indice}" " - " "#{k}"" #{v}"
  end
  puts "Seleccionar producto a borrar"
  opcion = gets.chomp.to_i
end
