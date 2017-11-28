string = "<p>lorem</p><h2>ipsum</h2><p>dolor sit amet</p>"
openers = []
closers = []
incrementor = 0

#find first
openers << string.index("<")
closers << string.index(">")

#check what's happening here
puts "Index of first opener: #{openers}"
puts openers[incrementor]
puts "Index of first closer: #{closers}"
puts closers[incrementor]

#find subsequent by using index of previous
5.times do
	openers << string.index("<", openers[incrementor]+1)
	closers << string.index(">", closers[incrementor]+1)
	incrementor += 1
end

#print result to see if working
openers.each do
    |opener| puts "Opener index number #{openers.index(opener)}: #{opener}"
end

closers.each do
    |closer| puts "A closer index: #{closer}"
end

#cut out the tags using the opener/closer indices and store them in an array
tags = []
i = 0

5.times do
    tags << string.slice(openers[i], closers[i]-openers[i]+1)
    i += 1
end

#print result to see if working

tags.each do
    |tag| puts tag
end
