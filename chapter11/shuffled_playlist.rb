Dir.chdir('/Users/kesha/Downloads')

song_names = Dir['*.wav'].shuffle

puts("Generating playlist.")

playlist = File.open('shuffled_playlist.m3u', 'w')

song_names.each do |x|
	print '.'
	playlist << "/Users/kesha/Downloads/#{x}\n"
end
puts
puts "Done!"