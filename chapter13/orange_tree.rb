class OrangeTree
	def initialize
		@height = 0
		@years_old = 0
		@orange_count = 0
		puts "An orange tree is planted."
	end

	def height
		"#{@height} feet tall"
	end

	def count_the_oranges
		"#{@orange_count} oranges on the tree"
	end


	def pick_an_orange
		if @orange_count > 0
			@orange_count -= 1
			"Delicious!"
		else
			"There aren't any oranges on the tree."
		end
	end


	def one_year_passes
		@height += 2
		@years_old += 1
		@orange_count = 0
		

		if @years_old < 4
			@orange_count = 0
		elsif @years_old >= 4 and @years_old < 12
			@orange_count = @years_old/4
		else
			@orange_count = 0
			puts "The orange tree dies."
			exit
		end
		'One year passes . . .'
	end
end


my_tree = OrangeTree.new

while true 
	puts
	puts my_tree.height
	puts my_tree.count_the_oranges
	puts
	puts my_tree.pick_an_orange		
	puts my_tree.count_the_oranges
	puts
	puts my_tree.one_year_passes
end











