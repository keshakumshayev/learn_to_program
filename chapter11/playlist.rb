Dir.chdir('/Users/kesha/Downloads')

song_names = Dir['*.wav']

playlist = File.open('playlist.m3u', 'w')

song_names.each {|x|playlist << "/Users/kesha/Downloads/#{x}\n"}