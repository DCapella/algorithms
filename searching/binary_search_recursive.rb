def binary_search(collection, value, low=0, high=collection.length-1)
  return {'value': 'not found'} if low > high
  mid = (low + high) / 2
  if collection[mid] > value
    high = mid - 1
    return binary_search(collection, value, low, high)
  elsif collection[mid] < value
    low = mid + 1
    return binary_search(collection, value, low, high)
  else
    return mid
  end
end
