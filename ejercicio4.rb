personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas_edades = Hash[personas.zip edades]
print personas_edades

def edades(hash, nombre)
 puts hash[nombre]
  nil
end

puts edades(personas_edades, "Alejandro")
