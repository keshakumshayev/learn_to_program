def sort(my_array)
	recursive_sort(my_array, [])
end

def recursive_sort(some_array, sorted)

	until some_array.length<=1	
		sorted.push(some_array.min {|a,b| a.downcase <=> b.downcase})		##UPDATED MY SORT ALGORITHM TO SORT
		some_array.delete_at(some_array.index(some_array.min {|a,b| a.downcase <=> b.downcase}))  ##USING LOWERCASE
		recursive_sort(some_array, sorted)											##VERSIONS OF THE STRINGS
	end

	sorted+some_array
end


puts sort(['a','a','a','a','bBBbCC','Aa','bb','B'])
