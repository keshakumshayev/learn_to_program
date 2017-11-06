tableOfContents = "Table of Contents
Chapter 1: Getting Started page 1
Chapter 2: Numbers page 9
Chapter 3: Letters page 13"

lines = tableOfContents.split("\n")
chapter_names = lines[1..-1].map{|e| e.split('page')[0].split(':')[1]} #isolates chapter names from the text
page_numbers = lines[1..-1].map{|e| e.split('page')[-1]} #generates a list of page numbers from the text
chapter_page = chapter_names.zip(page_numbers) #array of arrays, each containing the chapter name and page it starts

puts lines[0].center(60) # start with the header 'Table of Contents' in the center
#then format all the chapter names and page numbers to the left and right
lines[1..-1].each{|e| puts ('Chapter'+"%3s:"%lines.index(e)+chapter_page[lines.index(e)-1][0]).ljust(30)+('page'+"%5s"%chapter_page[lines.index(e)-1][1]).rjust(30)}