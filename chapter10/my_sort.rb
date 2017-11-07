def sort(my_array)
	recursive_sort(my_array, [])
end

def recursive_sort(some_array, sorted)

	until some_array.length<=1	
		sorted.push(some_array.min {|a,b| a <=> b})
		some_array.delete_at(some_array.index(some_array.min {|a,b| a <=> b}))
		recursive_sort(some_array, sorted)
	end

	sorted+some_array
end


puts sort(['a','a','a','a','bBBbCC','Aa','bb','B'])
