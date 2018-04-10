def quick_sort(collection)
  return collection if collection.length <= 1
  pivot_point = collection.length-1
  index = 0
  (collection.length-1).times do |num|
    if collection[index] >= collection[pivot_point]
      collection.insert(pivot_point, collection.delete_at(index))
      pivot_point -= 1
    else
      index += 1
    end
  end
  quick_sort(collection[0...pivot_point]) + quick_sort(collection[pivot_point..-1])
end
