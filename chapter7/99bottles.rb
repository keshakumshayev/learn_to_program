bottle_count = 99

while bottle_count>1
	puts	"#{bottle_count} bottles of beer on the wall,"+"\n"+
			"#{bottle_count} bottles of beer."+"\n"+
			"Take one down, Pass it around,"+"\n"+
			"#{bottle_count-1} bottles of beer on the wall."+"\n\n"
	bottle_count -= 1
end
if bottle_count == 1
	puts	"#{bottle_count} bottles of beer on the wall,"+"\n"+
			"#{bottle_count} bottles of beer."+"\n"+
			"Take one down, Pass it around,"+"\n"+
			"No more bottles of beer on the wall."+"\n\n"
	bottle_count -= 1
end
if bottle_count == 0
	puts 	"No more bottles of beer on the wall,"+"\n"+
			"No more bottles of beer."+"\n"+
			"Go to the store and buy some more,"+"\n"+
			"99 bottles of beer on the wall..."
end