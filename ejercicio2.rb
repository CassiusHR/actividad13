productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750 }

productos.each { |producto, valor| puts producto }

productos['cereal'] = 2200
print productos

productos['bebida'] = 2000
print productos

productos2 = productos.to_a
puts productos2

productos.delete('galletas')
puts productos
