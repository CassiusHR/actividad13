opcion = 0
inventario = { "Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6 }
while opcion != 7
puts "Seleccionar opcion:"
puts "1 - Agregar un item (item, stock)"
puts "2 - Quitar un item"
puts "3 - Ver Inventario actual"
puts "4 - Ver el stock total"
puts "5 - Ver producto con mayor stock"
puts "6 - Consultar producto"
puts "7 - Salir"
opcion = gets.chomp.to_i

if opcion == 1
  puts "------------------"
  puts "agregue producto y cantidad:"
  producto = gets.chomp
  tmp_arr = producto.split(",")
  new_k = tmp_arr[0]
  new_v = tmp_arr[1].to_i
  inventario[new_k] = new_v
  puts new_v.to_s + " " + new_k.to_s + " agregados"
  puts "------------------"
end

if opcion == 2
  indice = 0
  deletion_products = []
  deletion_index = []
  puts "------------------"
  puts "Inventario:"
  inventario.each do |k,v|
    indice += 1
    puts "#{indice}" " - " "#{k}"" #{v}"
    deletion_products.push(k)
    deletion_index.push(indice)
  end
  puts "------------------"
  deletion_array = deletion_index.zip deletion_products

  puts "Seleccionar producto a borrar:"
  opcion = gets.chomp.to_i
  deletion_array.each do |i,k|
    if opcion == i
      puts "------------------"
      puts "#{k} borrado"
      puts "------------------"
      inventario.delete(k)
    end
  end
end

if opcion == 3
  puts "------------------"
  puts "Inventario actual:"
  puts inventario
  puts "------------------"
end

if opcion == 4
sum_value = inventario.inject(0) { |sum, value| sum += value[1] }
puts "------------------"
puts "Suma de todos los productos:"
puts sum_value
puts "------------------"
end

if opcion == 5
  
end
end
