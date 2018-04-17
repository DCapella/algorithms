def bucket_sort(array, bucket_size = 5)
  if array.empty?
    return
  end

  # Determine minimum and maximum values
  min_value = array.min
  max_value = array.max

  # Initialise buckets
  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  buckets = Array.new(bucket_count)
  (0..buckets.length - 1).each do |i|
    buckets[i] = []
  end

  # Distribute input array values into buckets
  (0..array.length - 1).each do |i|
    buckets[((array[i] - min_value) / bucket_size).floor].push(array[i])
  end

  # Sort buckets and place back into input array
  array.clear
  (0..buckets.length - 1).each do |i|
    insert_sort buckets[i]
    buckets[i].each do |value|
      array.push(value)
    end
  end
  array
end

# Sorts an array using insertion sort.
def insert_sort(array, compare = lambda { |a, b| a <=> b })
  (1..array.length - 1).each do |i|
    item = array[i]
    indexHole = i
    while indexHole > 0 and compare.call(array[indexHole - 1], item) > 0
      array[indexHole] = array[indexHole - 1]
      indexHole = indexHole - 1
    end
    array[indexHole] = item
  end
end

# test_bucket = [5, 1, 4, 2, 3]
# p bucket_sort(test_bucket)
