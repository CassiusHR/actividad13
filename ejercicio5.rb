meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

meses_ventas = Hash[meses.zip ventas]

meses_ventas = meses_ventas.invert

def mayor_valor(hash)
  hash.max_by{|k,v| k}
end
puts mayor_valor(meses_ventas)
