def heap_sort(collection)
  n = collection.length - 1
  a = collection

  (n / 2).downto(0) do |i|
    create_max_heap(a, i, n)
  end

  while n > 0
    a[0], a[n] = a[n], a[0]
    n -= 1
    create_max_heap(a, 0, n)
  end
  a
end


def create_max_heap(collection, parent, threshold)
  root = collection[parent]
  while (child = 2 * parent) <= threshold do
    child += 1 if child < threshold && collection[child] < collection[child + 1]
    break if root >= collection[child]
    collection[parent], parent = collection[child], child
  end
  collection[parent] = root
end

# arr_test = [5, 1, 4, 2, 3]
# p heap_sort(arr_test)
