h = { "x": 1, "y":2 }

h[:z] = 3

h[:x] = 5

h.delete(:y)

puts "yeah" if h[:z]
hash2 = Hash.new

def revert_hash(original_hash)
  tmp_hash = Hash.new
  original_hash.each do |key, value|
    value2 = key
    key2 = value
    tmp_hash[key2] = value2
  end
  print tmp_hash
end

revert_hash(h)
