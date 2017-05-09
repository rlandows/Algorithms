require 'benchmark'
def nearest_possible_neighbor(graph_of_cities, current_city,array)
  graph_of_cities[current_city][-1] = true
  distance = 5000
  index = nil


while array.length < graph_of_cities.length - 1
  graph_of_cities[current_city][0...-1].each_with_index do |num, idx|
    if num < distance && num > 0 && graph_of_cities.values[idx][-1] != true
      distance = num
      index = idx
    end
  end
  array << graph_of_cities.keys[index]
  nearest_possible_neighbor(graph_of_cities,graph_of_cities.keys[index], array)
  end
  array
end




#cities are: los angeles, long beach, san diego, irvine, visited?
#index[0] distance from los angeles, index[1] distance from Long Beach, index[2] distance from San Diego, index[3], distance from irvine
map = {:los_angeles => [0,25,120,50,false], :long_beach => [25,0,110,35,false], :san_diego => [120,110,0,85,false], :irvine => [50,35,85,0,false]}

# puts nearest_possible_neighbor(map, :irvine, [])

a = Benchmark.measure do |x|
  puts nearest_possible_neighbor(map, :irvine, [])
end

puts a
