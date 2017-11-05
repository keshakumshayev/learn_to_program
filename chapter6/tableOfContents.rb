tableOfContents = "Table of Contents
Chapter 1: Getting Started page 1
Chapter 2: Numbers page 9
Chapter 3: Letters page 13"

lines = tableOfContents.split("\n")
chapter_numbers = lines[1..-1].map{|e| e.split(':')[0].split(' ')[1]+':'}
chapter_names = lines[1..-1].map{|e| e.split('page')[0].split(':')[1]}
page_numbers = lines[1..-1].map{|e| e.split('page')[-1]}


puts lines[0].center(60)
lines[1..-1].each{|e| puts ('Chapter'+"%4s"%chapter_numbers[lines.index(e)-1]+chapter_names[lines.index(e)-1]).ljust(30)+('page'+"%5s"%page_numbers[lines.index(e)-1]).rjust(30)}