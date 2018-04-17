require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'

arr = [];

while true
  temp = rand(51)
  arr << temp unless arr.include? temp
  break if arr.length == 50
end

Benchmark.bm do |x|
  x.report("bucket sort:") { 10.times { bucket_sort(arr) } }
  x.report("heap sort:") { 10.times { heap_sort(arr) } }
  x.report("quick sort:") { 10.times { quick_sort(arr) } }
end

#        user     system      total        real
# bucket sort:  0.000000   0.000000   0.000000 (  0.000526)
# heap sort:  0.000000   0.000000   0.000000 (  0.000461)
# quick sort:  0.000000   0.000000   0.000000 (  0.001289)
